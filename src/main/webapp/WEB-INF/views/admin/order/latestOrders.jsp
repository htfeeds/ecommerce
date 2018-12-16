<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<spring:message code="admin.dashboard.latestOrders" var="msgLatestOrders" />
<spring:message code="admin.dashboard.latestOrders.viewAll" var="msgViewAll" />

<div class="box box-info" id="latest-orders-box">
    <div class="box-header with-border">
        <h3 class="box-title">
            <i class="fa fa-cart-plus"></i>
            ${msgLatestOrders}
            <a href="<c:url value="/" />" class="btn btn-xs btn-info btn-flat margin-l-10">${msgViewAll}</a>
        </h3>
        <div class="box-tools pull-right">
            <button class="btn btn-box-tool" data-widget="collapse">
                <text><i class="fa fa-minus"></i></text>
            </button>
        </div>
    </div>
    <div class="box-body">
        <div id="orders-grid"></div>

        <script>
            $(document).ready(function () {
                $('#latest-orders-box').on('click', 'button[data-widget="collapse"]', function () {
                    var collapsed = !$('#latest-orders-box').hasClass('collapsed-box');
                    // If you need to save this setting, do it here
                });

                $("#orders-grid").kendoGrid({
                    dataSource: {
                        type: "json",
                        transport: {
                            read: {
                                url: "order/order-list",
                                type: "POST",
                                dataType: "json",
                                data: additionalDataLatestOrders
                            }
                        },
                        schema: {
                            data: "Data",
                            total: "Total",
                            errors: "Errors"
                        },
                        error: function (e) {
                            display_kendoui_grid_error(e);
                            // Cancel the changes
                            this.cancelChanges();
                        },
                        pageSize: 5,
                        serverPaging: true,
                        serverFiltering: true,
                        serverSorting: true
                    },
                    pageable: {
                        refresh: true,
                        messages: {
                            display: "{0} - {1} of {2} items",
                            empty: "No items to display",
                            page: "Page",
                            of: "of {0}",
                            itemsPerPage: "items per page",
                            first: "Go to the first page",
                            previous: "Go to the previous page",
                            next: "Go to the next page",
                            last: "Go to the last page",
                            refresh: "Refresh",
                            allPages: "All",
                            morePages: "More pages"
                        }
                    },
                    scrollable: false,
                    columns: [
                        {
                            field: "CustomOrderNumber",
                            title: "Order #",
                            width: 80
                        },
                        {
                            field: "OrderStatus",
                            title: "Order status",
                            width: 100,
                            template: '<span class="grid-report-item ' +
                                                    '# if(OrderStatusId == 10) {# yellow #} #' +
                                                    '# if(OrderStatusId == 20) {# blue #} #' +
                                                    '# if(OrderStatusId == 30) {# green #} #' +
                                                    '# if(OrderStatusId == 40) {# red #} #' +
                                '">#=OrderStatus#</span>'
                        },
                        {
                            field: "CustomerEmail",
                            title: "Customer",
                            width: 250,
                            template: '#=CustomerFullName# (#=CustomerEmail#)'
                        },
                        {
                            field: "StoreName",
                            hidden: true,
                            title: "Store",
                            width: 100
                        }, {
                            field: "CreatedOn",
                            title: "Created on",
                            width: 150,
                            type: "date",
                            format: "{0:G}"
                        },
                        {
                            field: "Id",
                            title: "View",
                            width: 30,
                            headerAttributes: { style: "text-align:center" },
                            attributes: { style: "text-align:center" },
                            template: '<a class="btn btn-xs btn-default" href="/admin/order/edit/#=Id#"><i class="fa fa-eye"></i>View</a>'
                        }
                    ]
                });
            });

            function additionalDataLatestOrders() {
                var data = {};
                addAntiForgeryToken(data);
                return data;
            }
        </script>
    </div>
</div>
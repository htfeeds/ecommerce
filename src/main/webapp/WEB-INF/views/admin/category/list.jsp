<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="../../taglib.jsp"%>

<div class="content-header clearfix">
    <h1 class="pull-left">
        @T("Admin.Catalog.Categories.Manage")
        Manage Categories


    </h1>
    <div class="pull-right">
        <a href="@Url.Action("Create")" class="btn bg-blue">
            <i class="fa fa-plus-square"></i>
            @T("Admin.Common.AddNew")
        </a>
        <div class="btn-group">
            <button type="button" class="btn btn-success">
                <i class="fa fa-download"></i>
                @T("Admin.Common.Export")
            </button>
            <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                <span class="caret"></span>
                <span class="sr-only">&nbsp;</span>
            </button>
            <ul class="dropdown-menu" role="menu">
                <li>
                    <a href="@Url.Action("ExportXml")">
                        <i class="fa fa-file-code-o"></i>
                        @T("Admin.Common.ExportToXml")
                    </a>
                </li>
                <li>
                    <a href="@Url.Action("ExportXlsx")">
                        <i class="fa fa-file-excel-o"></i>
                        @T("Admin.Common.ExportToExcel")
                    </a>
                </li>
            </ul>
        </div>
        <button type="button" name="importexcel" class="btn bg-olive" data-toggle="modal" data-target="#importexcel-window">
            <i class="fa fa-upload"></i>
            @T("Admin.Common.Import")
        </button>
    </div>
</div>

<div class="content">
    <div class="form-horizontal">
        <div class="panel-group">
            <div class="panel panel-default panel-search">
                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group">
                                <div class="col-md-4">
                                    @Html.NopLabelFor(model => model.SearchCategoryName)
                                </div>
                                <div class="col-md-8">
                                    @Html.NopEditorFor(model => model.SearchCategoryName)
                                </div>
                            </div>
                            <div class="form-group" @(Model.AvailableStores.SelectionIsNotPossible() ? Html.Raw("style=\"display:none\"") : null)>
                                <div class="col-md-4">
                                    @Html.NopLabelFor(model => model.SearchStoreId)
                                </div>
                                <div class="col-md-8">
                                    @Html.NopDropDownList("SearchStoreId", Model.AvailableStores)
                                </div>
                            </div>
                            <div class="form-group">
                                <div class="col-md-8 col-md-offset-4">
                                    <button type="button" id="search-categories" class="btn btn-primary btn-search"><i class="fa fa-search"></i>@T("Admin.Common.Search")</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="panel panel-default">
                <div class="panel-body">
                    <div id="categories-grid"></div>

                    <script>
                        $(document).ready(function() {
                            $("#categories-grid").kendoGrid({
                                dataSource: {
                                    type: "json",
                                    transport: {
                                        read: {
                                            url: "@Html.Raw(Url.Action("List", "Category"))",
                                            type: "POST",
                                            dataType: "json",
                                            data: additionalData
                                        }
                                    },
                                    schema: {
                                        data: "Data",
                                        total: "Total",
                                        errors: "Errors"
                                    },
                                    error: function(e) {
                                        display_kendoui_grid_error(e);
                                        // Cancel the changes
                                        this.cancelChanges();
                                    },
                                    pageSize: @(defaultGridPageSize),
                                    serverPaging: true,
                                    serverFiltering: true,
                                    serverSorting: true
                                },
                                pageable: {
                                    refresh: true,
                                    pageSizes: [@(gridPageSizes)],
                                    @Html.Partial("_GridPagerMessages")
                                },
                                editable: {
                                    confirmation: "@T("Admin.Common.DeleteConfirmation")",
                                    mode: "inline"
                                },
                                scrollable: false,
                                columns: [
                                    {
                                        field: "Breadcrumb",
                                        title: "@T("Admin.Catalog.Categories.Fields.Name")"
                                    }, {
                                        field: "Published",
                                        title: "@T("Admin.Catalog.Categories.Fields.Published")",
                                        width: 100,
                                        headerAttributes: { style: "text-align:center" },
                                        attributes: { style: "text-align:center" },
                                        template: '# if(Published) {# <i class="fa fa-check true-icon"></i> #} else {# <i class="fa fa-close false-icon"></i> #} #'
                                    }, {
                                        field: "DisplayOrder",
                                        title: "@T("Admin.Catalog.Categories.Fields.DisplayOrder")",
                                        width: 150
                                    }, {
                                        field: "Id",
                                        title: "@T("Admin.Common.Edit")",
                                        width: 100,
                                        headerAttributes: { style: "text-align:center" },
                                        attributes: { style: "text-align:center" },
                                        template: '<a class="btn btn-default" href="Edit/#=Id#"><i class="fa fa-pencil"></i>@T("Admin.Common.Edit")</a>'
                                    }
                                ]
                            });
                        });
                    </script>

                    <script type="text/javascript">
                        $(document).ready(function() {
                            //search button
                            $('#search-categories').click(function() {
                                //search
                                var grid = $('#categories-grid').data('kendoGrid');
                                grid.dataSource.page(1); //new search. Set page size to 1
                                //grid.dataSource.read(); we already loaded the grid above using "page" function
                                return false;
                            });

                            $("#@Html.FieldIdFor(model => model.SearchCategoryName)").keydown(function(event) {
                                if (event.keyCode == 13) {
                                    $("#search-categories").click();
                                    return false;
                                }
                            });
                        });

                        function additionalData() {
                            var data = {
                                SearchCategoryName: $('#@Html.FieldIdFor(model => model.SearchCategoryName)').val(),
                                SearchStoreId: $('#SearchStoreId').val()
                            };
                            addAntiForgeryToken(data);
                            return data;
                        }
                    </script>
                </div>
            </div>
        </div>
    </div>
</div>

@*import categories form*@
<div id="importexcel-window" class="modal fade" tabindex="-1" role="dialog" aria-labelledby="importexcel-window-title">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title" id="importexcel-window-title">@T("Admin.Common.ImportFromExcel")</h4>
            </div>
            @using (Html.BeginForm("ImportFromXlsx", "Category", FormMethod.Post, new { enctype = "multipart/form-data" }))
            {
                <div class="form-horizontal">
                    <div class="modal-body">
                        @Html.AntiForgeryToken()
                        <ul class="common-list">
                            <li>
                                <em>@T("Admin.Catalog.Categories.List.ImportFromExcelTip")</em>
                            </li>
                            <li>
                                <em>@T("Admin.Common.ImportFromExcel.ManyRecordsWarning")</em>
                            </li>
                        </ul>
                        <div class="form-group">
                            <div class="col-md-2">
                                <div class="label-wrapper">
                                    <label class="control-label">
                                        @T("Admin.Common.ExcelFile")
                                    </label>
                                </div>
                            </div>
                            <div class="col-md-10">
                                <input type="file" id="importexcelfile" name="importexcelfile" class="form-control" />
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary">
                            @T("Admin.Common.ImportFromExcel")
                        </button>
                    </div>
                </div>
            }
        </div>
    </div>
</div>
package vn.htfeeds.ecommerce.common;

import java.time.ZonedDateTime;

/**
 * This interface defines the methods used to get the current
 * date and time.
 *
 * @author HTFeeds
 *
 * Aug 26, 2017
 */
public interface DateTimeService {

    /**
     * Returns the current date and time.
     * @return
     */
    ZonedDateTime getCurrentDateAndTime();

}

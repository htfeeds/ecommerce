package vn.htfeeds.ecommerce.common;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.time.ZonedDateTime;

/**
 * This class returns the current time.
 *
 * @author HTFeeds
 *
 * Aug 26, 2017
 */
public class CurrentTimeDateTimeService implements DateTimeService {

    private static final Logger LOGGER = LoggerFactory.getLogger(CurrentTimeDateTimeService.class);

    @Override
    public ZonedDateTime getCurrentDateAndTime() {
        ZonedDateTime currentDateAndTime = ZonedDateTime.now();

        LOGGER.info("Returning current date and time: {}", currentDateAndTime);

        return currentDateAndTime;
    }

}

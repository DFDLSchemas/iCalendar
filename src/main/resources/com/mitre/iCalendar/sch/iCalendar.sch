<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE sch:schema [
<!ENTITY ALPHA "a-zA-Z">
<!ENTITY DIGIT "0-9">
<!ENTITY b-char "&ALPHA;&DIGIT;\+/">
<!ENTITY b-end "(([&b-char;][&b-char;]==)|([&b-char;][&b-char;][&b-char;]=))">
<!ENTITY BINARY "([&b-char;][&b-char;][&b-char;][&b-char;])*&b-end;?">

<!ENTITY mailto-URI "mailto:[&#x20;-&#x7E;]+">

<!ENTITY DATE "&date-value;">
<!ENTITY date-value "&date-full-year;&date-month;&date-mday;">
<!ENTITY date-full-year "([&DIGIT;][&DIGIT;][&DIGIT;][&DIGIT;])">
<!ENTITY date-month "(0[1-9]|1[0-2])">
<!ENTITY date-mday "(0[1-9]|1[0-9]|2[0-9]|3[0-1])">

<!ENTITY DATE-TIME "&DATE;T&TIME;">

<!ENTITY DURATION "&dur-value;">
<!ENTITY dur-value "[\+\-]?P(&dur-date;|&dur-time;|&dur-week;)">
<!ENTITY dur-date "(&dur-day;(&dur-time;)?)">
<!ENTITY dur-time "(T(&dur-hour;|&dur-minute;|&dur-second;))">
<!ENTITY dur-week "([&DIGIT;]+W)">
<!ENTITY dur-hour "([&DIGIT;]+H(&dur-minute;)?)">
<!ENTITY dur-minute "([&DIGIT;]+M(&dur-second;)?)">
<!ENTITY dur-second "([&DIGIT;]+S)">
<!ENTITY dur-day "([&DIGIT;]+D)">

<!ENTITY FLOAT "&float-value;">
<!ENTITY float-value "[\+\-]?[&DIGIT;]+(\.[&DIGIT;]+)?">

<!ENTITY PERIOD "&period-explicit;|&period-start;">
<!ENTITY period-explicit "((&DATE-TIME;)/(&DATE-TIME;))">
<!ENTITY period-start "((&DATE-TIME;)/(&DURATION;))">

<!ENTITY RECUR "&recur-rule-part;(;&recur-rule-part;)*">
<!ENTITY recur-rule-part "((FREQ=&freq;)|(UNTIL=&enddate;)|(COUNT=[&DIGIT;]+)|(INTERVAL=[&DIGIT;]+)|(BYSECOND=&byseclist;)|(BYMINUTE=&byminlist;)|(BYHOUR=&byhrlist;)|(BYDAY=&bywdaylist;)|(BYMONTHDAY=&bymodaylist;)|(BYYEARDAY=&byyrdaylist;)|(BYWEEKNO=&bywknolist;)|(BYMONTH=&bymolist;)|(BYSETPOS=&bysplist;)|(WKST=&weekday;))">
<!ENTITY freq "(SECONDLY|MINUTELY|HOURLY|DAILY|WEEKLY|MONTHLY|YEARLY)">
<!ENTITY enddate "(&DATE;|&DATE-TIME;)">
<!ENTITY byseclist "(&seconds;(,&seconds;)*)">
<!ENTITY seconds "([0-9]|[1-5][0-9]|60)">
<!ENTITY byminlist "(&minutes;(,&minutes;)*)">
<!ENTITY minutes "([0-9]|[1-4][0-9]|5[0-9])">
<!ENTITY byhrlist "(&hour;(,&hour;)*)">
<!ENTITY hour "([0-9]|1[0-9]|2[0-3])">
<!ENTITY bywdaylist "(&weekdaynum;(,&weekdaynum;)*)">
<!ENTITY weekdaynum "(([\+\-]?([1-9]|[1-4][0-9]|5[0-3]))?(&weekday;))">
<!ENTITY weekday "(SU|MO|TU|WE|TH|FR|SA)">
<!ENTITY bymodaylist "(&monthdaynum;(,&monthdaynum;)*)">
<!ENTITY monthdaynum "([\+\-]?([1-9]|[1-2][0-9]|3[0-1]))">
<!ENTITY byyrdaylist "(&yeardaynum;(,&yeardaynum;)*)">
<!ENTITY yeardaynum "([\+\-]?([1-9]|[1-9][0-9]|[1-2][0-9][0-9]|3[0-5][0-9]|36[0-6]))">
<!ENTITY bywknolist "(&weeknum;(,&weeknum;)*)">
<!ENTITY weeknum "([\+\-]?([1-9]|[1-4][0-9]|5[0-3]))">
<!ENTITY bymolist "(&monthnum;(,&monthnum;)*)">
<!ENTITY monthnum "([1-9]|1[0-2])">
<!ENTITY bysplist "(&setposday;(,&setposday;)*)">
<!ENTITY setposday "(&yeardaynum;)">

<!ENTITY TEXT "([&WSP;!#$&#x25;&amp;&apos;\(\)\*\+\-\./0-9&lt;=&gt;\?@A-Z\&#x5B;\\\&#x5D;\^_`a-z\{{\|\}}~:;,&quot;]|(&NON-US-ASCII;))*">
<!ENTITY ESCAPED-CHAR "(\\|;|,|&#x0A;|&#x0D;)">
<!ENTITY DQUOTE "&#x22;">
<!ENTITY WSP "&#x20;&#x09;">
<!ENTITY NON-US-ASCII "(&UTF8-2;|&UTF8-3;|&UTF8-4;)">
<!ENTITY UTF8-2 "([&#xC2;-&#xDF;]&UTF8-tail;)">
<!ENTITY UTF8-3 "((&#xE0;[&#xA0;-&#xBF;]&UTF8-tail;)|([&#xE1;-&#xEC;]&UTF8-tail;&UTF8-tail;)|(&#xED;[&#x80;-&#x9F;]&UTF8-tail;)|([&#xEE;-&#xEF;]&UTF8-tail;&UTF8-tail;))">
<!ENTITY UTF8-4 "((&#xF0;[&#x90;-&#xBF;]&UTF8-tail;&UTF8-tail;)|([&#xF1;-&#xF3;]&UTF8-tail;&UTF8-tail;&UTF8-tail;)|(&#xF4;[&#x80;-&#x8F;]&UTF8-tail;&UTF8-tail;))">
<!ENTITY UTF8-tail "[&#x80;-&#xBF;]">

<!ENTITY TIME "&time-hour;&time-minute;&time-second;(&time-utc;)?">
<!ENTITY time-hour "(0[0-9]|1[0-9]|2[0-3])">
<!ENTITY time-minute "(0[0-9]|[1-4][0-9]|5[0-3])">
<!ENTITY time-second "(0[0-9]|[1-5][0-9]|60)">
<!ENTITY time-utc "Z">

<!ENTITY UTC-OFFSET "&time-numzone;">
<!ENTITY time-numzone "([\+\-]&time-hour;&time-minute;(&time-second;)?)">

<!ENTITY type-name "(&reg-name;)">
<!ENTITY subtype-name "(&reg-name;)">
<!ENTITY reg-name "[&reg-name-chars;]{{1,127}}">
<!ENTITY reg-name-chars "&ALPHA;&DIGIT;#$amp;\.\+\-\^_">

<!ENTITY paramtext "(.*)">

<!ENTITY iana-token "[&ALPHA;&DIGIT;_]+">
]>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" 
            xmlns:math="http://www.w3.org/2005/xpath-functions/math"
            xmlns:xs="http://www.w3.org/2001/XMLSchema"
            queryBinding="xslt2">
    <sch:ns uri="http://www.w3.org/2005/xpath-functions/math" prefix="math"/>
    <sch:ns uri="http://www.w3.org/2001/XMLSchema" prefix="xs"/>
    
    <!--
        NOTICE
        
        This software was produced for the U. S. Government under
        Basic Contract No. W15P7T-13-C-A802, and is subject to the
        Rights in Noncommercial Computer Software and Noncommercial
        Computer Software Documentation Clause 252.227-7014 (FEB 2012)
        
        Copyright 2017 The MITRE Corporation.
    -->
    <!-- 
        Schematron Schema for the iCalendar data format.
        Author: Roger Costello, The MITRE Corporation.
        Version: 0.1
        Date: October 30, 2017
      -->
    <sch:let name="owner" value="'[a-zA-Z0-9 ]{1,30}'"/>
    <sch:let name="description" value="'[a-zA-Z0-9 \.]{1,30}'"/>
    <sch:let name="language" value="'[A-Z]{2,2}'"/>
    <sch:let name="FPI" value="concat('^(ISO|\+|\-)//',$owner,'//',$description,'//',$language, '$')"/>
    
    <sch:pattern id="Calendar-Rules">
        
        <sch:rule context="vcalendar/properties">
            
            <sch:assert test="not(property[(property-name/text() = 'URL') and (url)][2])">
                The URL property can be specified *once* in an iCalendar object.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'LAST-MODIFIED') and (last-modified)][2])">
                The LAST-MODIFIED property can be specified *once* in an iCalendar object.
            </sch:assert>
            
            <sch:assert test="true()">
                The NAME property can be specified multiple times in an iCalendar object.
            </sch:assert>
            
            <sch:assert test="true()">
                The DESCRIPTION property can be specified multiple times in an iCalendar object.
            </sch:assert>
            
            <sch:assert test="true()">
                The CATEGORIES property can be specified multiple times in an iCalendar object.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'SOURCE') and (source)][2])">
                The SOURCE property can be specified *once* in an iCalendar object.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'REFRESH-INTERVAL') and (refresh-interval)][2])">
                The REFRESH-INTERVAL property can be specified *once* in an iCalendar object.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'COLOR') and (color)][2])">
                The COLOR property can be specified *once* in an iCalendar object.
            </sch:assert>
            
            <sch:assert test="true()">
                The IMAGE property can be specified multiple times in an iCalendar object.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'CALSCALE') and (calscale)][2])">
                The CALSCALE property can be specified *once* in an iCalendar object.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'METHOD') and (method)][2])">
                The METHOD property can be specified *once* in an iCalendar object.
            </sch:assert>
            
            <sch:assert test="property[(property-name/text() = 'PRODID') and (prodid)]">
                The PRODID property MUST be specified in an iCalendar object.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'PRODID') and (prodid)][2])">
                The PRODID property MUST be specified *once* in an iCalendar object.
            </sch:assert>
            
            <sch:assert test="property[(property-name/text() = 'VERSION') and (version)]">
                The VERSION property MUST be specified in an iCalendar object.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'VERSION') and (version)][2])">
                The VERSION property MUST be specified *once* in an iCalendar object.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="vcalendar/components">
            
            <sch:assert test="not(.//property[property-name/text() = 'NAME'])">
                The NAME property cannot be specified within a component.
            </sch:assert>
            
            <sch:assert test="not(.//property[property-name/text() = 'CALSCALE'])">
                The CALSCALE property cannot be specified within a component.
            </sch:assert>
            
            <sch:assert test="not(.//property[property-name/text() = 'METHOD'])">
                The METHOD property cannot be specified within a component.
            </sch:assert>
            
            <sch:assert test="not(.//property[property-name/text() = 'PRODID'])">
                The PRODID property cannot be specified within a component.
            </sch:assert>
            
            <sch:assert test="not(.//property[property-name/text() = 'VERSION'])">
                The VERSION property cannot be specified within a component.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="Component-Rules">
        
        <sch:rule context="vcalendar/components">
            
            <sch:assert test="component/*">
                An iCalendar object MUST include at least one calendar component.
            </sch:assert>
            
            <sch:assert test="component/*[(self::vevent or self::vtodo or self::vjournal or self::vfreebusy or self::vtimezone) and 
                           empty(. except (self::vevent, self::vtodo, self::vjournal, self::vfreebusy, self::vtimezone))]">
                An iCalendar object may contain only these components: VEVENT, VTODO, VJOURNAL, VFREEBUSY, VTIMEZONE.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="VEVENT-Rules">
        
        <sch:rule context="vevent/properties">
            
            <sch:assert test="true()">
                The CONFERENCE property can be specified multiple times in a vevent component.
            </sch:assert>
            
            <sch:assert test="true()">
                The IMAGE property can be specified multiple times in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'COLOR') and (color)][2])">
                The COLOR property MUST NOT occur more than *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="property[(property-name/text() = 'DTSTAMP') and (dtstamp)]">
                The DTSTAMP property MUST be specified in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'DTSTAMP') and (dtstamp)][2])">
                The DTSTAMP property MUST occur *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="property[(property-name/text() = 'UID') and (uid)]">
                The UID property MUST be specified in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'UID') and (uid)][2])">
                The UID property MUST occur *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="if (not(ancestor::vcalendar[1]/properties/property[(property-name/text() = 'METHOD') and (method)])) then (property[(property-name/text() = 'DTSTART') and (dtstart)]) else true()">
                The DTSTART property is REQUIRED in a vevent component if the iCalendar object does not specify a METHOD property.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'CLASS') and (class)][2])">
                The CLASS property MUST NOT occur more than *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'CREATED') and (created)][2])">
                The CREATED property MUST NOT occur more than *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'DESCRIPTION') and (description)][2])">
                The DESCRIPTION property MUST NOT occur more than *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'GEO') and (geo)][2])">
                The GEO property MUST NOT occur more than *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'LAST-MODIFIED') and (last-modified)][2])">
                The LAST-MODIFIED property MUST NOT occur more than *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'LOCATION') and (location)][2])">
                The LOCATION property MUST NOT occur more than *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'ORGANIZER') and (organizer)][2])">
                The ORGANIZER property MUST NOT occur more than *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'PRIORITY') and (priority)][2])">
                The PRIORITY property MUST NOT occur more than *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'SEQ') and (seq)][2])">
                The SEQ property MUST NOT occur more than *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'STATUS') and (status)][2])">
                The STATUS property MUST NOT occur more than *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'SUMMARY') and (summary)][2])">
                The SUMMARY property MUST NOT occur more than *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'TRANSP') and (transp)][2])">
                The TRANSP property MUST NOT occur more than *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'URL') and (url)][2])">
                The URL property MUST NOT occur more than *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'RECURRENCE-ID') and (recurrence-id)][2])">
                The RECURRENCE-ID property MUST NOT occur more than *once* in a vevent component.
            </sch:assert>
            
            <sch:assert test="not(property[name/text() = 'DTEND'] and property[name/text() = 'DURATION'])">
                A vevent component may contain either the DTEND property or the DURATION property, but not both.
            </sch:assert>
             
            <sch:assert test="
                if (property[name/text() = 'DTSTART'] and property[name/text() = 'DATE']) then 
                    if (matches(property[name/text() = 'DTSTART']/dtstart/property-value/this-is-the-value, '^&DATE;$')) then 
                       (matches(property[name/text() = 'DTEND']/dtend/property-value/this-is-the-value, '^&DATE;$')) else true() else true()">
                If a vevent component has a DTSTART property with a DATE value, then the DTEND property (if it exists) must have a DATE value.
            </sch:assert>
            
            <sch:assert test="
                if (property[name/text() = 'DTSTART'] and property[name/text() = 'DTEND'] and property[name/text() = 'DURATION']) then  
                    if (matches(property[name/text() = 'DTSTART']/dtstart/property-value/this-is-the-value, '^&DATE;$') and
                        matches(property[name/text() = 'DTEND']/dtend/property-value/this-is-the-value, '^&DATE;$')) then
                        if (property[name/text() = 'DTEND']/dtend/property-value/this-is-the-value &gt;
                            property[name/text() = 'DTSTART']/dtstart/property-value/this-is-the-value) then
                            (matches(property[name/text() = 'DURATION']/duration/property-value/this-is-the-value, '^&dur-day;$')) or 
                            (matches(property[name/text() = 'DURATION']/duration/property-value/this-is-the-value, '^&dur-week;$')) 
                        else true()
                    else true()
                else true()">
                If a vevent component has a DTSTART property with a DATE value 
                and a DTEND property with a DATE value and the DTEND property 
                value is set to a calendar date after the DTSTART property value,
                then if such a vevent has a DURATION property, it MUST be specified
                as a "dur-day" or "dur-week" value.
            </sch:assert>
            
            <sch:assert test="not(../ancestor::vevent)">
                A vevent component cannot be nested within another calendar component.
            </sch:assert>
            
            <sch:assert test="not(../vevent) and not(../vtodo) and not(../vjournal) and not(../vfreebusy) and not(../vtimezone) and not(../standard) and not(../daylight)">
                The only nested component allowed in a vevent component is the valarm component.
            </sch:assert>
            
            <sch:assert test="property/*[(self::dtstamp or self::uid or self::dtstart or self::class or self::created or 
                self::description or self::geo or self::last-modified or self::location or self::organizer or 
                self::priority or self::seq or self::status or self::summary or self::transp or 
                self::url or self::recurid or self::rrule or self::dtend or self::duration or self::attach or self::attendee or self::categories or 
                self::comment or self::contact or self::exdate or self::rstatus or self::related or self::resources or self::rdate) and 
                empty(. except (self::dtstamp, self::uid, self::dtstart, self::class, self::created, 
                self::description, self::geo, self::last-modified, self::location, self::organizer, 
                self::priority, self::seq, self::status, self::summary, self::transp, 
                self::url, self::recurid, self::rrule, self::dtend, self::duration, self::attach, self::attendee, self::categories, 
                self::comment, self::contact, self::exdate, self::rstatus, self::related, self::resources, self::rdate))]">
                A vevent component may contain only these properties: dtstamp, uid, dtstart, class, created, 
                description, geo, last-modified, location, organizer, 
                priority, seq, status, summary, transp, 
                url, recurid, rrule, dtend, duration, attach, attendee, categories, 
                comment, contact, exdate, rstatus, related, resources, rdate
            </sch:assert>
            
            <sch:assert test="if (../valarm) then not(../valarm/following-sibling::*[not(self::valarm)]) else true()">
                If a vevent component contains nested valarm component(s), 
                the valarm component(s) must be last, i.e., no properties 
                may occur after the valarm component(s).
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="VTODO-Rules">
        
        <sch:rule context="vtodo/properties">
            
            <sch:assert test="true()">
                The CONFERENCE property can be specified multiple times in a vtodo component.
            </sch:assert>
            
            <sch:assert test="true()">
                The IMAGE property can be specified multiple times in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'COLOR') and (color)][2])">
                The COLOR property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="property[(property-name/text() = 'DTSTAMP') and (dtstamp)]">
                The DTSTAMP property MUST be specified in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'DTSTAMP') and (dtstamp)][2])">
                The DTSTAMP property MUST occur *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="property[(property-name/text() = 'UID') and (uid)]">
                The UID property MUST be specified in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'UID') and (uid)][2])">
                The UID property MUST occur *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'CLASS') and (class)][2])">
                The CLASS property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'COMPLETED') and (completed)][2])">
                The COMPLETED property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'CREATED') and (created)][2])">
                The CREATED property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'DESCRIPTION') and (description)][2])">
                The DESCRIPTION property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'DTSTART') and (dtstart)][2])">
                The DTSTART property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'GEO') and (geo)][2])">
                The GEO property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'LAST-MODIFIED') and (last-modified)][2])">
                The LAST-MODIFIED property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'LOCATION') and (location)][2])">
                The LOCATION property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'ORGANIZER') and (organizer)][2])">
                The ORGANIZER property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'PERCENT-COMPLETE') and (percent-complete)][2])">
                The PERCENT-COMPLETE property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'PRIORITY') and (priority)][2])">
                The PRIORITY property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'RECURRENCE-ID') and (recurrence-id)][2])">
                The RECURRENCE-ID property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'SEQ') and (seq)][2])">
                The SEQ property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'STATUS') and (status)][2])">
                The STATUS property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'SUMMARY') and (summary)][2])">
                The SUMMARY property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'URL') and (url)][2])">
                The URL property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'DUE') and (due)][2])">
                The DUE property MUST NOT occur more than *once* in a vtodo component.
            </sch:assert>
            
            <sch:assert test="not(property[name/text() = 'DUE'] and property[name/text() = 'DURATION'])">
                A vtodo component may contain either the DUE property or the DURATION property, but not both.
            </sch:assert>
            
            <sch:assert test="if (property[name/text() = 'DURATION']) then (property[name/text() = 'DTSTART']) else true()">
                If the DURATION property occurs in a vtodo component, then DTSTART must also occur.
            </sch:assert>
            
            <sch:assert test="not(../ancestor::vtodo)">
                A vtodo component cannot be nested within another calendar component.
            </sch:assert>
            
            <sch:assert test="not(../vevent) and not(../vtodo) and not(../vjournal) and not(../vfreebusy) and not(../vtimezone) and not(../standard) and not(../daylight)">
                The only nested component allowed in a vtodo component is the valarm component.
            </sch:assert>
            
            <sch:assert test="property/*[(self::dtstamp or self::uid or self::class or self::completed or self::created or 
                self::description or self::dtstart or self::geo or self::last-modified or self::location or self::organizer or 
                self::percent or self::priority or self::recurid or self::seq or self::status or self::summary or 
                self::url or self::rrule or self::due or self::duration or self::attach or self::attendee or self::categories or 
                self::comment or self::contact or self::exdate or self::rstatus or self::related or self::resources or self::rdate) and 
                empty(. except (self::dtstamp, self::uid, self::class, self::completed, self::created, 
                self::description, self::dtstart, self::geo, self::last-modified, self::location, self::organizer, 
                self::percent, self::priority, self::recurid, self::seq, self::status, self::summary, 
                self::url, self::rrule, self::due, self::duration, self::attach, self::attendee, self::categories, 
                self::comment, self::contact, self::exdate, self::rstatus, self::related, self::resources, self::rdate))]">
                A vtodo component may contain only these properties: dtstamp, uid, class, completed, created, 
                description, dtstart, geo, last-modified, location,organizer, 
                percent, priority, recurid, seq, status, summary, 
                url, rrule, due, duration, attach, attendee, categories, 
                comment, contact, exdate, rstatus, related, resources, rdate.
            </sch:assert>
            
            <sch:assert test="if (../valarm) then not(../valarm/following-sibling::*[not(self::valarm)]) else true()">
                If a vtodo component contains nested valarm component(s), 
                the valarm component(s) must be last, i.e., no properties 
                may occur after the valarm component(s).
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="VJOURNAL-Rules">
       
        <sch:rule context="vjournal/properties">
            
            <sch:assert test="true()">
                The IMAGE property can be specified multiple times in a vjournal component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'COLOR') and (color)][2])">
                The COLOR property MUST NOT occur more than *once* in a vjournal component.
            </sch:assert>
            
            <sch:assert test="property[(property-name/text() = 'DTSTAMP') and (dtstamp)]">
                The DTSTAMP property MUST be specified in a vjournal component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'DTSTAMP') and (dtstamp)][2])">
                The DTSTAMP property MUST occur *once* in a vjournal component.
            </sch:assert>
            
            <sch:assert test="property[(property-name/text() = 'UID') and (uid)]">
                The UID property MUST be specified in a vjournal component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'UID') and (uid)][2])">
                The UID property MUST occur *once* in a vjournal component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'CLASS') and (class)][2])">
                The CLASS property MUST NOT occur more than *once* in a vjournal component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'CREATED') and (created)][2])">
                The CREATED property MUST NOT occur more than *once* in a vjournal component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'DTSTART') and (dtstart)][2])">
                The DTSTART property MUST NOT occur more than *once* in a vjournal component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'LAST-MODIFIED') and (last-modified)][2])">
                The LAST-MODIFIED property MUST NOT occur more than *once* in a vjournal component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'ORGANIZER') and (organizer)][2])">
                The ORGANIZER property MUST NOT occur more than *once* in a vjournal component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'RECURRENCE-ID') and (recurrence-id)][2])">
                The RECURRENCE-ID property MUST NOT occur more than *once* in a vjournal component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'SEQ') and (seq)][2])">
                The SEQ property MUST NOT occur more than *once* in a vjournal component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'STATUS') and (status)][2])">
                The STATUS property MUST NOT occur more than *once* in a vjournal component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'SUMMARY') and (summary)][2])">
                The SUMMARY property MUST NOT occur more than *once* in a vjournal component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'URL') and (url)][2])">
                The URL property MUST NOT occur more than *once* in a vjournal component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'RRULE') and (rrule)][2])">
                The RRULE property MUST NOT occur more than *once* in a vjournal component.
            </sch:assert>
            
            <sch:assert test="property/*[(self::dtstamp or self::uid or self::class or self::created or self::dtstart or 
                self::last-modified or self::organizer or self::recurid or self::seq or self::status or self::summary or 
                self::url or self::rrule or self::attach or self::attendee or self::categories or self::comment or self::contact or self::description or 
                self::exdate or self::related or self::rdate or self::rstatus) and 
                empty(. except (self::dtstamp, self::uid, self::class, self::created, self::dtstart, 
                self::last-modified, self::organizer, self::recurid, self::seq, self::status, self::summary, 
                self::url, self::rrule, self::attach, self::attendee, self::categories, self::comment, self::contact, self::description, 
                self::exdate, self::related, self::rdate, self::rstatus))]">
                A vjournal component may contain only these properties: dtstamp, uid, class, created, dtstart, last-modified,
                organizer, recurid, seq, status, summary, url, rrule, attach, attendee, categories, comment, contact, 
                description, exdate, related, rdate, rstatus.
            </sch:assert>
            
            <sch:assert test="not(../vevent) and not(../vtodo) and not(../vjournal) and not(../vfreebusy) and not(../vtimezone) and not(../valarm) and not(../standard) and not(../daylight)">
                No nested components allowed in a vjournal component.
            </sch:assert>
            
            <sch:assert test="not(../ancestor::vjournal)">
                A vjournal component cannot be nested within another calendar component.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="VFREEBUSY-Rules">
        
        <sch:rule context="vfreebusy/properties">
            
            <sch:assert test="property[(property-name/text() = 'DTSTAMP') and (dtstamp)]">
                The DTSTAMP property MUST be specified in a vfreebusy component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'DTSTAMP') and (dtstamp)][2])">
                The DTSTAMP property MUST occur *once* in a vfreebusy component.
            </sch:assert>
            
            <sch:assert test="property[(property-name/text() = 'UID') and (uid)]">
                The UID property MUST be specified in a vfreebusy component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'UID') and (uid)][2])">
                The UID property MUST occur *once* in a vfreebusy component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'CONTACT') and (contact)][2])">
                The CONTACT property MUST NOT occur more than *once* in a vfreebusy component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'DTSTART') and (dtstart)][2])">
                The DTSTART property MUST NOT occur more than *once* in a vfreebusy component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'DTEND') and (dtend)][2])">
                The DTEND property MUST NOT occur more than *once* in a vfreebusy component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'ORGANIZER') and (organizer)][2])">
                The ORGANIZER property MUST NOT occur more than *once* in a vfreebusy component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'URL') and (url)][2])">
                The URL property MUST NOT occur more than *once* in a vfreebusy component.
            </sch:assert>
            
            <sch:assert test="property/*[(self::dtstamp or self::uid or self::contact or self::dtstart or self::dtend or self::organizer or self::url or self::attendee or self::comment or self::freebusy or self::rstatus) and 
                empty(. except (self::dtstamp, self::uid, self::contact, self::dtstart, self::dtend, self::organizer, self::url, self::attendee, self::comment, self::freebusy, self::rstatus))]">
                A vfreebusy component may contain only these properties: dtstamp, uid, contact, dtstart, dtend,
                organizer, url, attendee, comment, freebusy, rstatus.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'RRULE') and (rrule)])">
                The RRULE property MUST NOT occur in a vfreebusy component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'RDATE') and (rdate)])">
                The RDATE property MUST NOT occur in a vfreebusy component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'EXDATE') and (exdate)])">
                The EXDATE property MUST NOT occur in a vfreebusy component.
            </sch:assert>
            
            <sch:assert test="not(../vevent) and not(../vtodo) and not(../vjournal) and not(../vfreebusy) and not(../vtimezone) and not(../valarm) and not(../standard) and not(../daylight)">
                No nested components allowed in a vfreebusy component.
            </sch:assert>
            
            <sch:assert test="not(../ancestor::vfreebusy)">
                A vfreebusy component cannot be nested within another calendar component.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="VTIMEZONE-Rules">
        
        <sch:rule context="vtimezone/properties">
            
            <sch:assert test="property[(property-name/text() = 'TZID') and (tzid)]">
                The TZID property MUST be specified in a vtimezone component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'TZID') and (tzid)][2])">
                The TZID property MUST occur *once* in a vtimezone component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'LAST-MODIFIED') and (last-modified)][2])">
                The LAST-MODIFIED property MUST NOT occur more than *once* in a vtimezone component.
            </sch:assert>
            
            <sch:assert test="not(../vevent) and not(../vtodo) and not(../vjournal) and not(../vfreebusy) and not(../vtimezone)">
                The only nested components allowed in a vtimezone component are the standard and daylight components.
            </sch:assert>
            
            <sch:assert test="property[standard or daylight]">
                The vtimezone component MUST include a standard component or a daylight component.
            </sch:assert>
            
            <sch:assert test="if (../standard) then not(../daylight) else true()">
                If a vtimezone component contains a standard component, then it MUST NOT contain a daylight component.
            </sch:assert>
            
            <sch:assert test="if (../daylight) then not(../standard) else true()">
                If a vtimezone component contains a daylight component, then it MUST NOT contain a standard component.
            </sch:assert>
            
            <sch:assert test="property/*[(self::tzid or self::last-modified or self::tzurl) and 
                empty(. except (self::tzid, self::last-modified, self::tzurl))]">
                A vtimezone component may contain only these properties: tzid, last-modified, tzurl.
            </sch:assert>
            
            <sch:assert test="not(../ancestor::vtimezone)">
                A vtimezone component cannot be nested within another calendar component.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="STANDARD-Rules">
        
        <sch:rule context="standard/properties">
            
            <sch:assert test="property[(property-name/text() = 'DTSTART') and (dtstart)]">
                The DTSTART property MUST be specified in a standard component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'DTSTART') and (dtstart)][2])">
                The DTSTART property MUST occur *once* in a standard component.
            </sch:assert>
            
            <sch:assert test="property[(property-name/text() = 'TZOFFSETTO') and (tzoffsetto)]">
                The TZOFFSETTO property MUST be specified in a standard component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'TZOFFSETTO') and (tzoffsetto)][2])">
                The TZOFFSETTO property MUST occur *once* in a standard component.
            </sch:assert>
            
            <sch:assert test="property[(property-name/text() = 'TZOFFSETFROM') and (tzoffsetfrom)]">
                The TZOFFSETFROM property MUST be specified in a standard component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'TZOFFSETFROM') and (tzoffsetfrom)][2])">
                The TZOFFSETFROM property MUST occur *once* in a standard component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'RRULE') and (rrule)][2])">
                The RRULE property MUST NOT occur more than *once* in a standard component.
            </sch:assert>
            
            <sch:assert test="property/*[(self::dtstart or self::tzoffsetto or self::tzoffsetfrom or self::rrule or
                                          self::comment or self::rdate or self::tzname) and 
                                          empty(. except (self::dtstart, self::tzoffsetto, self::tzoffsetfrom, self::rrule,
                                          self::comment, self::rdate, self::tzname))]">
                A standard component may contain only these properties: dtstart, tzoffsetto, tzoffsetfrom, rrule, comment, rdate, tzname.
            </sch:assert>
            
            <sch:assert test="not(../vevent) and not(../vtodo) and not(../vjournal) and not(../vfreebusy) and not(../vtimezone) and not(../valarm) and not(../standard) and not(../daylight)">
                No nested components allowed in a standard component.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="DAYLIGHT-Rules">
        
        <sch:rule context="daylight/properties">
            
            <sch:assert test="property[(property-name/text() = 'DTSTART') and (dtstart)]">
                The DTSTART property MUST be specified in a daylight component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'DTSTART') and (dtstart)][2])">
                The DTSTART property MUST occur *once* in a daylight component.
            </sch:assert>
            
            <sch:assert test="property[(property-name/text() = 'TZOFFSETTO') and (tzoffsetto)]">
                The TZOFFSETTO property MUST be specified in a daylight component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'TZOFFSETTO') and (tzoffsetto)][2])">
                The TZOFFSETTO property MUST occur *once* in a daylight component.
            </sch:assert>
            
            <sch:assert test="property[(property-name/text() = 'TZOFFSETFROM') and (tzoffsetfrom)]">
                The TZOFFSETFROM property MUST be specified in a daylight component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'TZOFFSETFROM') and (tzoffsetfrom)][2])">
                The TZOFFSETFROM property MUST occur *once* in a daylight component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'RRULE') and (rrule)][2])">
                The RRULE property MUST NOT occur more than *once* in a daylight component.
            </sch:assert>
            
            <sch:assert test="property/*[(self::dtstart or self::tzoffsetto or self::tzoffsetfrom or self::rrule or
                self::comment or self::rdate or self::tzname) and 
                empty(. except (self::dtstart, self::tzoffsetto, self::tzoffsetfrom, self::rrule,
                self::comment, self::rdate, self::tzname))]">
                A daylight component may contain only these properties: dtstart, tzoffsetto, tzoffsetfrom, rrule, comment, rdate, tzname.
            </sch:assert>
            
            <sch:assert test="not(../vevent) and not(../vtodo) and not(../vjournal) and not(../vfreebusy) and not(../vtimezone) and not(../valarm) and not(../standard) and not(../daylight)">
                No nested components allowed in a daylight component.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="VALARM-Rules">
        
        <sch:rule context="valarm/properties">
            
            <sch:assert test="property[(property-name/text() = 'ACTION') and (action)]">
                The ACTION property MUST be specified in a valarm component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'ACTION') and (action)][2])">
                The ACTION property MUST occur *once* in a valarm component.
            </sch:assert>
            
            <sch:assert test="property[(property-name/text() = 'TRIGGER') and (trigger)]">
                The TRIGGER property MUST be specified in a valarm component.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'TRIGGER') and (trigger)][2])">
                The TRIGGER property MUST occur *once* in a valarm component.
            </sch:assert>
            
            <sch:assert test="not(../vevent) and not(../vtodo) and not(../vjournal) and not(../vfreebusy) and not(../vtimezone) and not(../valarm) and not(../standard) and not(../daylight)">
                No nested components allowed in a valarm component.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="valarm/properties[matches(property/action/property-value/this-is-the-value, '^AUDIO$', 'i')]">
            
            <sch:assert test="property[duration or repeat]">
                The valarm component with ACTION=AUDIO MUST include a duration property or a repeat property.
            </sch:assert>
            
            <sch:assert test="if (property/duration) then not(property/repeat) else true()">
                If a valarm component with ACTION=AUDIO contains a duration property, then it MUST NOT contain a repeat property.
            </sch:assert>
            
            <sch:assert test="if (property/repeat) then not(property/duration) else true()">
                If a valarm component with ACTION=AUDIO contains a repeat property, then it MUST NOT contain a duration property.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'ATTACH') and (attach)][2])">
                The ATTACH property MUST NOT occur more than *once* in a valarm component with ACTION=AUDIO.
            </sch:assert>
            
            <sch:assert test="property/*[(self::action or self::trigger or self::duration or self::repeat or self::attach) and 
                empty(. except (self::action, self::trigger, self::duration, self::repeat, self::attach))]">
                A valarm component with ACTION=AUDIO may contain only these properties: action, trigger, duration, repeat, attach.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="valarm/properties[matches(property/action/property-value/this-is-the-value, '^DISPLAY$', 'i')]">
            
            <sch:assert test="property[(property-name/text() = 'DESCRIPTION') and (description)]">
                A valarm component with ACTION=DISPLAY MUST contain a description property.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'DESCRIPTION') and (description)][2])">
                The DESCRIPTION property MUST occur *once* in a valarm component with ACTION=DISPLAY.
            </sch:assert>
            
            <sch:assert test="property[duration or repeat]">
                The valarm component with ACTION=AUDIO MUST include a duration property or a repeat property.
            </sch:assert>
            
            <sch:assert test="if (property/duration) then (property/repeat) else true()">
                If a valarm component with ACTION=DISPLAY contains a duration property, then it MUST contain a repeat property.
            </sch:assert>
            
            <sch:assert test="if (property/repeat) then (property/duration) else true()">
                If a valarm component with ACTION=DISPLAY contains a repeat property, then it MUST contain a duration property.
            </sch:assert>
            
            <sch:assert test="property/*[(self::action or self::trigger or self::description or self::duration or self::repeat) and 
                empty(. except (self::action, self::trigger, self::description, self::duration, self::repeat))]">
                A valarm component with ACTION=DISPLAY may contain only these properties: action, trigger, description, duration, repeat.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="valarm/properties[matches(property/action/property-value/this-is-the-value, '^EMAIL$', 'i')]">
            
            <sch:assert test="property[(property-name/text() = 'DESCRIPTION') and (description)]">
                A valarm component with ACTION=EMAIL MUST contain a description property.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'DESCRIPTION') and (description)][2])">
                The DESCRIPTION property MUST occur *once* in a valarm component with ACTION=EMAIL.
            </sch:assert>
            
            <sch:assert test="property[(property-name/text() = 'SUMMARY') and (summary)]">
                A valarm component with ACTION=EMAIL MUST contain a summary property.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'SUMMARY') and (description)][2])">
                The SUMMARY property MUST occur *once* in a valarm component with ACTION=EMAIL.
            </sch:assert>
            
            <sch:assert test="property[(property-name/text() = 'ATTENDEE') and (attendee)]">
                A valarm component with ACTION=EMAIL MUST contain an attendee property.
            </sch:assert>
            
            <sch:assert test="property[duration or repeat]">
                The valarm component with ACTION=EMAIL MUST include a duration property or a repeat property.
            </sch:assert>
            
            <sch:assert test="if (property/duration) then (property/repeat) else true()">
                If a valarm component with ACTION=EMAIL contains a duration property, then it MUST contain a repeat property.
            </sch:assert>
            
            <sch:assert test="if (property/repeat) then (property/duration) else true()">
                If a valarm component with ACTION=EMAIL contains a repeat property, then it MUST contain a duration property.
            </sch:assert>
            
            <sch:assert test="not(property[(property-name/text() = 'ATTACH') and (attach)][2])">
                The ATTACH property MUST NOT occur more than *once* in a valarm component with ACTION=EMAIL.
            </sch:assert>
            
            <sch:assert test="property/*[(self::action or self::trigger or self::description or self::summary or self::attendee or self::duration or self::repeat or self::attach) and 
                empty(. except (self::action, self::trigger, self::description, self::summary, self::attendee, self::duration, self::repeat, self::attach))]">
                A valarm component with ACTION=EMAIL may contain only these properties: action, trigger, description, summary, attendee, duration, repeat, attach.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="DTEND-Rules">
        
        <sch:rule context="properties/property/dtend">
            
            <sch:assert test="if (parameters/parameter/value) then 
                                  matches(parameters/parameter/value/this-is-the-value, '^DATE-TIME$', 'i') or
                                  matches(parameters/parameter/value/this-is-the-value, '^DATE$', 'i')
                              else true()">
                If the DTEND property has a VALUE parameter, the value of the VALUE parameter must be either DATE-TIME or DATE.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[value][2])">
                The DTEND property may have a VALUE parameter. The VALUE parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="if (not(parameters/parameter/value) or matches(parameters/parameter/value/this-is-the-value, '^DATE-TIME$', 'i')) then 
                                  not(ancestor::properties[1]/property/dtstart/parameters/parameter/value) or
                                  matches(ancestor::properties[1]/property/dtstart/parameters/parameter/value/this-is-the-value, '^DATE-TIME$', 'i')
                                  else matches(ancestor::properties[1]/property/dtstart/parameters/parameter/value/this-is-the-value, '^DATE$', 'i')">
                The value of VALUE of DTEND MUST be the same as the DTSTART property
            </sch:assert>
            
            <sch:assert test="property-value/this-is-the-value gt ancestor::properties[1]/property/dtstart/property-value/this-is-the-value">
                The value of DTEND MUST be later in time than the value of the DTSTART property.
            </sch:assert>
            
            <sch:assert test="if (matches(ancestor::properties[1]/property/dtstart/property-value/this-is-the-value, '^\d{8,8}T\d{6,6}$', 'i')) then
                                  matches(property-value/this-is-the-value, '^\d{8,8}T\d{6,6}$', 'i')
                              else true()">
                The DTEND property MUST be specified as a date with local time if and only if the DTSTART property is also
                specified as a date with local time.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[tzid][2])">
                The DTEND property may have a TZID parameter. The TZID parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="if (ancestor::component[1]/vfreebusy) then matches(property-value/this-is-the-value, '^\d{8,8}T\d{6,6}Z$', 'i') else true()">
                Within the VFREEBUSY calendar component, the DTEND property defines
                the end date and time for the free or busy time information. The
                time MUST be specified in the UTC time format.
            </sch:assert>
            
            <!-- 
                I don't know how to tell if the TZID parameter is required. See my Stack Overflow question:
                https://stackoverflow.com/questions/45800252/how-to-validate-that-a-property-with-a-date-time-value-must-have-a-tzid-paramete
            -->
            <sch:assert test="if ((parameters/parameter/value eq 'DATE-TIME') or not(parameters/parameter/value)) then true() else true()">
                If the DTEND property has a VALUE parameter and its value is 'DATE-TIME' (or there is no VALUE parameter),
                and the value of DTEND is not either a UTC or a "floating" time, then the TZID parameter MUST be specified.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="DTSTART-Rules">
        
        <sch:rule context="properties/property/dtstart">
            
            <sch:assert test="if (parameters/parameter/value) then 
                matches(parameters/parameter/value/this-is-the-value, '^DATE-TIME$', 'i') or
                matches(parameters/parameter/value/this-is-the-value, '^DATE$', 'i')
                else true()">
                If the DTSTART property has a VALUE parameter, the value of the VALUE parameter must be either DATE-TIME or DATE.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[value][2])">
                The DTSTART property may have a VALUE parameter. The VALUE parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[tzid][2])">
                The DTSTART property may have a TZID parameter. The TZID parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <!-- 
                I don't know how to tell if the TZID parameter is required. See my Stack Overflow question:
                https://stackoverflow.com/questions/45800252/how-to-validate-that-a-property-with-a-date-time-value-must-have-a-tzid-paramete
            -->
            <sch:assert test="if ((parameters/parameter/value eq 'DATE-TIME') or not(parameters/parameter/value)) then true() else true()">
                If the DTSTART property has a VALUE parameter and its value is 'DATE-TIME' (or there is no VALUE parameter),
                and the value of DTSTART is not either a UTC or a "floating" time, then the TZID parameter MUST be specified.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="VTIMEZONE-for-each-TZID">
        
        <sch:rule context="vevent/properties//parameter/tzid/this-is-the-value">
            <sch:let name="tzid-ref" value="."/>
            
            <sch:assert test="$tzid-ref = ancestor::vcalendar/components/component/vtimezone//tzid/property-value/this-is-the-value">
                An individual VTIMEZONE calendar component MUST be specified for
                each unique TZID parameter value specified in the iCalendar
                object. The value of the TZID property parameter MUST equal the 
                value of the TZID property for the matching time zone definition.
                The TZID parameter in VEVENT must match a TZID property in a VTIMEZONE component.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="vtodo/properties//parameter/tzid/this-is-the-value">
            <sch:let name="tzid-ref" value="."/>
            
            <sch:assert test="$tzid-ref = ancestor::vcalendar/components/component/vtimezone//tzid/property-value/this-is-the-value">
                An individual VTIMEZONE calendar component MUST be specified for
                each unique TZID parameter value specified in the iCalendar
                object. The value of the TZID property parameter MUST equal the 
                value of the TZID property for the matching time zone definition.
                The TZID parameter in VTODO must match a TZID property in a VTIMEZONE component.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="vjournal/properties//parameter/tzid/this-is-the-value">
            <sch:let name="tzid-ref" value="."/>
            
            <sch:assert test="$tzid-ref = ancestor::vcalendar/components/component/vtimezone//tzid/property-value/this-is-the-value">
                An individual VTIMEZONE calendar component MUST be specified for
                each unique TZID parameter value specified in the iCalendar
                object. The value of the TZID property parameter MUST equal the 
                value of the TZID property for the matching time zone definition.
                The TZID parameter in VJOURNAL must match a TZID property in a VTIMEZONE component.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="vfreebusy/properties//parameter/tzid/this-is-the-value">
            <sch:let name="tzid-ref" value="."/>
            
            <sch:assert test="$tzid-ref = ancestor::vcalendar/components/component/vtimezone//tzid/property-value/this-is-the-value">
                An individual VTIMEZONE calendar component MUST be specified for
                each unique TZID parameter value specified in the iCalendar
                object. The value of the TZID property parameter MUST equal the 
                value of the TZID property for the matching time zone definition.
                The TZID parameter in VFREEBUSY must match a TZID property in a VTIMEZONE component.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="DUE-Rules">
        
        <sch:rule context="properties/property/due">
            
            <sch:assert test="if (parameters/parameter/value) then 
                matches(parameters/parameter/value/this-is-the-value, '^DATE-TIME$', 'i') or
                matches(parameters/parameter/value/this-is-the-value, '^DATE$', 'i')
                else true()">
                If the DUE property has a VALUE parameter, the value of the VALUE parameter must be either DATE-TIME or DATE.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[value][2])">
                The DUE property may have a VALUE parameter. The VALUE parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="if (not(parameters/parameter/value) or matches(parameters/parameter/value/this-is-the-value, '^DATE-TIME$', 'i')) then 
                not(ancestor::properties[1]/property/dtstart/parameters/parameter/value) or
                matches(ancestor::properties[1]/property/dtstart/parameters/parameter/value/this-is-the-value, '^DATE-TIME$', 'i')
                else matches(ancestor::properties[1]/property/dtstart/parameters/parameter/value/this-is-the-value, '^DATE$', 'i')">
                The value of VALUE of DUE MUST be the same as the DTSTART property
            </sch:assert>
            
            <sch:assert test="property-value/this-is-the-value gt ancestor::properties[1]/property/dtstart/property-value/this-is-the-value">
                The value of DUE MUST be later in time than the value of the DTSTART property.
            </sch:assert>
            
            <sch:assert test="if (matches(ancestor::properties[1]/property/dtstart/property-value/this-is-the-value, '^\d{8,8}T\d{6,6}$', 'i')) then
                matches(property-value/this-is-the-value, '^\d{8,8}T\d{6,6}$', 'i')
                else true()">
                The DUE property MUST be specified as a date with local time if and only if the DTSTART property is also
                specified as a date with local time.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[tzid][2])">
                The DUE property may have a TZID parameter. The TZID parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <!-- 
                I don't know how to tell if the TZID parameter is required. See my Stack Overflow question:
                https://stackoverflow.com/questions/45800252/how-to-validate-that-a-property-with-a-date-time-value-must-have-a-tzid-paramete
            -->
            <sch:assert test="if ((parameters/parameter/value eq 'DATE-TIME') or not(parameters/parameter/value)) then true() else true()">
                If the DUE property has a VALUE parameter and its value is 'DATE-TIME' (or there is no VALUE parameter),
                and the value of DUE is not either a UTC or a "floating" time, then the TZID parameter MUST be specified.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="DURATION-Rules">
        
        <sch:rule context="properties/property/duration">
            
            <sch:assert test="if (ancestor::properties[1]/property/dtstart) then 
                matches(property-value/this-is-the-value, '^&dur-day;$', 'i') or
                matches(property-value/this-is-the-value, '^&dur-week;$', 'i')
                else true()">
                When the DURATION property relates to a
                DTSTART property that is specified as a DATE value, then the
                DURATION property MUST be specified as a dur-day or dur-week.
                value.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="FREEBUSY-Rules">
        
        <sch:rule context="properties/property/freebusy/property-value/this-is-the-value">
            
            <sch:assert test="
                matches(., '^\d{8,8}T\d{6,6}Z/\d{8,8}T\d{6,6}Z$', 'i') or
                matches(., '^\d{8,8}T\d{6,6}Z/&DURATION;$', 'i') ">
                The FREEBUSY time periods can be specified as either a start
                and end DATE-TIME or a start DATE-TIME and DURATION.  The date and
                time MUST be a UTC time format.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="properties/property/freebusy">
            
            <sch:assert test="not(parameters/parameter[fbtype][2])">
                The FREEBUSY property may have a FBTYPE parameter. The FBTYPE parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[fbtype][2])">
                The "FREEBUSY" property can specify more than one value, separated
                by the COMMA character.  In such cases, the "FREEBUSY" property
                values MUST all be of the same "FBTYPE" property parameter type
                (e.g., all values of a particular "FBTYPE" listed together in a
                single property).
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="TRANSP-Rules">
        
        <sch:rule context="properties/property/transp">
            
            <sch:assert test="
                if (parameters/parameter/value) then 
                matches(parameters/parameter/value/this-is-the-value, '^OPAQUE$', 'i') or
                matches(parameters/parameter/value/this-is-the-value, '^TRANSPARENT$', 'i')
                else true()">
                The value of the TRANSP property must be either OPAQUE or TRANSPARENT.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="TZNAME-Rules">
        
        <sch:rule context="properties/property/tzname">
            
            <sch:assert test="not(parameters/parameter[language][2])">
                The TZNAME property may have a LANGUAGE parameter. The LANGUAGE parameter MUST NOT occur more than *once*.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="ATTENDEE-Rules">
        
        <sch:rule context="properties/property/attendee/parameters/parameter/cn">
            
            <sch:assert test="not(ancestor::vfreebusy)">
                The CN parameter MUST NOT be used with an ATTENDEE property that is within a VFREEBUSY.
            </sch:assert>
            
            <sch:assert test="not(ancestor::valarm)">
                The CN parameter MUST NOT be used with an ATTENDEE property that is within a VALARM.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="properties/property/attendee/parameters/parameter/role">
            
            <sch:assert test="not(ancestor::vfreebusy)">
                The ROLE parameter MUST NOT be used with an ATTENDEE property that is within a VFREEBUSY.
            </sch:assert>
            
            <sch:assert test="not(ancestor::valarm)">
                The ROLE parameter MUST NOT be used with an ATTENDEE property that is within a VALARM.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="properties/property/attendee/parameters/parameter/partstat">
            
            <sch:assert test="not(ancestor::vfreebusy)">
                The PARTSTAT parameter MUST NOT be used with an ATTENDEE property that is within a VFREEBUSY.
            </sch:assert>
            
            <sch:assert test="not(ancestor::valarm)">
                The PARTSTAT parameter MUST NOT be used with an ATTENDEE property that is within a VALARM.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="properties/property/attendee/parameters/parameter/rsvp">
            
            <sch:assert test="not(ancestor::vfreebusy)">
                The RSVP parameter MUST NOT be used with an ATTENDEE property that is within a VFREEBUSY.
            </sch:assert>
            
            <sch:assert test="not(ancestor::valarm)">
                The RSVP parameter MUST NOT be used with an ATTENDEE property that is within a VALARM.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="properties/property/attendee/parameters/parameter/cutype">
            
            <sch:assert test="not(ancestor::vfreebusy)">
                The CUTYPE parameter MUST NOT be used with an ATTENDEE property that is within a VFREEBUSY.
            </sch:assert>
            
            <sch:assert test="not(ancestor::valarm)">
                The CUTYPE parameter MUST NOT be used with an ATTENDEE property that is within a VALARM.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="properties/property/attendee/parameters/parameter/member">
            
            <sch:assert test="not(ancestor::vfreebusy)">
                The MEMBER parameter MUST NOT be used with an ATTENDEE property that is within a VFREEBUSY.
            </sch:assert>
            
            <sch:assert test="not(ancestor::valarm)">
                The MEMBER parameter MUST NOT be used with an ATTENDEE property that is within a VALARM.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="properties/property/attendee/parameters/parameter/delegated-to">
            
            <sch:assert test="not(ancestor::vfreebusy)">
                The DELEGATED-TO parameter MUST NOT be used with an ATTENDEE property that is within a VFREEBUSY.
            </sch:assert>
            
            <sch:assert test="not(ancestor::valarm)">
                The DELEGATED-TO parameter MUST NOT be used with an ATTENDEE property that is within a VALARM.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="properties/property/attendee/parameters/parameter/rsvp">
            
            <sch:assert test="not(ancestor::vfreebusy)">
                The DELEGATED-FROM parameter MUST NOT be used with an ATTENDEE property that is within a VFREEBUSY.
            </sch:assert>
            
            <sch:assert test="not(ancestor::valarm)">
                The DELEGATED-FROM parameter MUST NOT be used with an ATTENDEE property that is within a VALARM.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="properties/property/attendee/parameters/parameter/rsvp">
            
            <sch:assert test="not(ancestor::vfreebusy)">
                The SENT-BY parameter MUST NOT be used with an ATTENDEE property that is within a VFREEBUSY.
            </sch:assert>
            
            <sch:assert test="not(ancestor::valarm)">
                The SENT-BY parameter MUST NOT be used with an ATTENDEE property that is within a VALARM.
            </sch:assert>
            
        </sch:rule>
        
        <sch:rule context="properties/property/attendee/parameters/parameter/rsvp">
            
            <sch:assert test="not(ancestor::vfreebusy)">
                The DIR parameter MUST NOT be used with an ATTENDEE property that is within a VFREEBUSY.
            </sch:assert>
            
            <sch:assert test="not(ancestor::valarm)">
                The DIR parameter MUST NOT be used with an ATTENDEE property that is within a VALARM.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="CONTACT-Rules">
        
        <sch:rule context="properties/property/contact">
            
            <sch:assert test="not(parameters/parameter[altrep][2])">
                The CONTACT property may have a ALTREP parameter. The ALTREP parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[language][2])">
                The CONTACT property may have a LANGUAGE parameter. The LANGUAGE parameter MUST NOT occur more than *once*.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="ORGANIZER-Rules">
        
        <sch:rule context="properties/property/organizer">
            
            <sch:assert test="not(parameters/parameter[cn][2])">
                The ORGANIZER property may have a CN parameter. The CN parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[dir][2])">
                The ORGANIZER property may have a DIR parameter. The DIR parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[sent-by][2])">
                The ORGANIZER property may have a SENT-BY parameter. The SENT-BY parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[language][2])">
                The ORGANIZER property may have a LANGUAGE parameter. The LANGUAGE parameter MUST NOT occur more than *once*.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="RECURID-Rules">
        
        <sch:rule context="properties/property/recurid">
            
            <sch:assert test="if (parameters/parameter/value) then 
                matches(parameters/parameter/value/this-is-the-value, '^DATE-TIME$', 'i') or
                matches(parameters/parameter/value/this-is-the-value, '^DATE$', 'i')
                else true()">
                If the RECURID property has a VALUE parameter, the value of the VALUE parameter must be either DATE-TIME or DATE.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[value][2])">
                The RECURID property may have a VALUE parameter. The VALUE parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="if (not(parameters/parameter/value) or matches(parameters/parameter/value/this-is-the-value, '^DATE-TIME$', 'i')) then 
                not(ancestor::properties[1]/property/dtstart/parameters/parameter/value) or
                matches(ancestor::properties[1]/property/dtstart/parameters/parameter/value/this-is-the-value, '^DATE-TIME$', 'i')
                else matches(ancestor::properties[1]/property/dtstart/parameters/parameter/value/this-is-the-value, '^DATE$', 'i')">
                The value of VALUE of RECURID MUST be the same as the DTSTART property
            </sch:assert>
            
            <sch:assert test="if (matches(ancestor::properties[1]/property/dtstart/property-value/this-is-the-value, '^\d{8,8}T\d{6,6}$', 'i')) then
                matches(property-value/this-is-the-value, '^\d{8,8}T\d{6,6}$', 'i')
                else true()">
                The RECURID property MUST be specified as a date with local time if and only if the DTSTART property is also
                specified as a date with local time.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[tzid][2])">
                The RECURID property may have a TZID parameter. The TZID parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[range][2])">
                The RECURID property may have a RANGE parameter. The RANGE parameter MUST NOT occur more than *once*.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="RELATED-TO-Rules">
        
        <sch:rule context="properties/property/related">
            
            <sch:assert test="ancestor::vevent or ancestor::vtodo or ancestor::vjournal">
                The RELATED-TO property can only be used in the "VEVENT", "VTODO", and "VJOURNAL" calendar components.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[reltype][2])">
                The RELATED-TO property may have a RELTYPE parameter. The RELTYPE parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="matches(parameters/parameter/reltype, 'PARENT|CHILD|SIBLING', 'i')">
                The "RELTYPE" property parameter is used to either
                explicitly state the default PARENT relationship type to the
                referenced calendar component or to override the default PARENT
                relationship type and specify either a CHILD or SIBLING
                relationship.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="URL-Rules">
        
        <sch:rule context="properties/property/url">
            
            <sch:assert test="ancestor::vevent or ancestor::vtodo or ancestor::vjournal or ancestor::vfreebusy">
                The URL property can only be used in the "VEVENT", "VTODO", "VJOURNAL" and "VFREEBUSY" calendar components.
            </sch:assert>
            
            <sch:assert test="not(ancestor::component[1]//url[2])">
                The URL property MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="not(parameter)">
                The URL property has no parameters.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="UID-Rules">
        
        <sch:rule context="properties/property/uid">
            
            <sch:assert test="ancestor::vevent or ancestor::vtodo or ancestor::vjournal or ancestor::vfreebusy">
                The UID property can only be used in the "VEVENT", "VTODO", "VJOURNAL" and "VFREEBUSY" calendar components.
            </sch:assert>
            
            <!-- This rule is always satisfied. I have it here only for documentation purposes. -->
            
            <sch:assert test="true()">
                Implementations MUST be able to receive and persist values of at
                least 255 octets for the UID property, and they MUST NOT truncate
                values in the middle of a UTF-8 multi-octet sequence.
            </sch:assert>
            
            <sch:assert test="not(parameter)">
                The UID property has no parameters.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="EXDATE-Rules">
        
        <sch:rule context="properties/property/exdate">
            
            <sch:assert test="if (parameters/parameter/value) then 
                matches(parameters/parameter/value/this-is-the-value, '^DATE-TIME$', 'i') or
                matches(parameters/parameter/value/this-is-the-value, '^DATE$', 'i')
                else true()">
                If the EXDATE property has a VALUE parameter, the value of the VALUE parameter must be either DATE-TIME or DATE.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[value][2])">
                The EXDATE property may have a VALUE parameter. The VALUE parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[tzid][2])">
                The EXDATE property may have a TZID parameter. The TZID parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="ancestor::vevent or ancestor::vtodo or ancestor::vjournal or ancestor::standard or ancestor::daylight">
                The EXDATE property can only be used in the "VEVENT", "VTODO", "VJOURNAL", "STANDARD", and "DAYLIGHT" calendar components.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="RDATE-Rules">
        
        <sch:rule context="properties/property/rdate">
            
            <sch:assert test="if (parameters/parameter/value) then 
                matches(parameters/parameter/value/this-is-the-value, '^DATE-TIME$', 'i') or
                matches(parameters/parameter/value/this-is-the-value, '^DATE$', 'i') or 
                matches(parameters/parameter/value/this-is-the-value, '^PERIOD$', 'i')
                else true()">
                If the RDATE property has a VALUE parameter, the value of the VALUE parameter must be either DATE-TIME, DATE, or PERIOD.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[value][2])">
                The RDATE property may have a VALUE parameter. The VALUE parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="not(parameters/parameter[tzid][2])">
                The RDATE property may have a TZID parameter. The TZID parameter MUST NOT occur more than *once*.
            </sch:assert>
            
            <sch:assert test="ancestor::vevent or ancestor::vtodo or ancestor::vjournal or ancestor::standard or ancestor::daylight">
                The RDATE property can only be used in the "VEVENT", "VTODO", "VJOURNAL", "STANDARD", and "DAYLIGHT" calendar components.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="RRULE-Rules">
        
        <sch:rule context="properties/property/rrule">
            
            <sch:assert test="not(../../property[rrule][2])">
                The RRULE SHOULD NOT be specified more than once.
                The recurrence set generated with multiple "RRULE" properties is
                undefined.
            </sch:assert>
            
            <sch:assert test="../../property[dtstart]">
                Use "DTSTART" with "RRULE".
                The "DTSTART" property specified within the iCalendar object
                defines the first instance of the recurrence.  
            </sch:assert>
            
            <sch:assert test="../../property/dtstart/parameters/parameter/tzid">
                Use a TZID parameter with DTSTART when there is a RRULE.
                In most cases, a
                "DTSTART" property of DATE-TIME value type used with a recurrence
                rule, should be specified as a date with local time and time zone
                reference to make sure all the recurrence instances start at the
                same local time regardless of time zone changes.
            </sch:assert>
            
            <sch:assert test="ancestor::vevent or ancestor::vtodo or ancestor::vjournal or ancestor::standard or ancestor::daylight">
                The RDATE property can only be used in the "VEVENT", "VTODO", "VJOURNAL", "STANDARD", and "DAYLIGHT" calendar components.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="DESCRIPTION-Rules">
        
        <!-- RFC 7986 provides updated recommendations on the
             description property. This captures those updated
             recommendations. -->
        
        <sch:rule context="properties/property/description">
            <sch:let name="numDesc" value="count(../../property/description)"/>
            <sch:let name="numLang" value="count(../../property/description/parameters/parameter/language)"/>
            <sch:let name="numDisjLang" value="count(distinct-values(../../property/description/parameters/parameter/language/this-is-the-value))"/>
            
            <sch:assert test="if ($numDesc gt 1) then 
                $numDisjLang eq $numLang
                else true()">
                The DESCRIPTION property can be specified multiple times in an
                iCalendar object.  However, each property MUST represent the
                description of the calendar in a different language.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="NAME-Rules">
        
        <!-- RFC 7986 provides updated recommendations. This is a 
             new property.  -->
        
        <sch:rule context="vcalendar/properties/property/name">
            <sch:let name="number-of-name-properties" value="count(../../property/name)"/>
            <sch:let name="number-of-language-properties" value="count(../../property/name/parameters/parameter/language)"/>
            <sch:let name="number-of-distinct-language-values" value="count(distinct-values(../../property/name/parameters/parameter/language/this-is-the-value))"/>
            
            <sch:assert test="if ($number-of-name-properties gt 1) then 
                                 $number-of-distinct-language-values eq $number-of-language-properties
                              else true()">
                The NAME property can be specified multiple times in an
                iCalendar object.  However, each property MUST represent the
                description of the calendar in a different language.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="REFRESH-INTERVAL-Rules">
        
        <!-- RFC 7986 provides updated recommendations. This is a 
             new property.  -->
        
        <sch:rule context="vcalendar/properties/property/refresh-interval">            
            
            <sch:assert test="matches(parameters/parameter/value/this-is-the-value, '^DURATION$', 'i')">
                The REFRESH-INTERVAL property must have a VALUE parameter, the value of the VALUE parameter must be DURATION.
                RFC 7986: New properties defined in this specification use the term "no
                default" in the "Value Type" definition to indicate that the "VALUE"
                parameter has to be included.
            </sch:assert> 
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="SOURCE-Rules">
        
        <!-- RFC 7986 provides updated recommendations. This is a 
             new property.  -->
        
        <sch:rule context="vcalendar/properties/property/source">            
            
            <sch:assert test="matches(parameters/parameter/value/this-is-the-value, '^URI$', 'i')">
                The SOURCE property must have a VALUE parameter, the value of the VALUE parameter must be URI.
                RFC 7986: New properties defined in this specification use the term "no
                default" in the "Value Type" definition to indicate that the "VALUE"
                parameter has to be included.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    <sch:pattern id="IMAGE-Rules">
        
        <!-- RFC 7986 provides updated recommendations. This is a 
             new property.  -->
        
        <sch:rule context="vcalendar/properties/property/image">            
            
            <sch:assert test="matches(parameters/parameter/value/this-is-the-value, '^URI$', 'i') or
                matches(parameters/parameter/value/this-is-the-value, '^BINARY$', 'i')">
                The IMAGE property must have a VALUE parameter, the value of the VALUE parameter must be URI or BINARY.
                RFC 7986: New properties defined in this specification use the term "no
                default" in the "Value Type" definition to indicate that the "VALUE"
                parameter has to be included.
            </sch:assert>          
            
            <sch:assert test="if (matches(parameters/parameter/value/this-is-the-value, '^BINARY$', 'i')) then
                matches(parameters/parameter/encoding/this-is-the-value, '^BASE64$', 'i')
                else true()">
                If the IMAGE property has VALUE = BINARY, then it must also have ENCODING = BASE64.
            </sch:assert>         
            
            <sch:assert test="not(parameters/parameter[altrep][2])">
                If the IMAGE property has at most one ALTREP parameter.
            </sch:assert>        
            
            <sch:assert test="not(parameters/parameter[display][2])">
                If the IMAGE property has at most one DISPLAY parameter.
            </sch:assert>
            
        </sch:rule>
        
    </sch:pattern>
    
    
    
    <!-- WORKING ON THE BELOW -->
    
    <sch:pattern id="CONFERENCE-Rules">
        
        <!-- RFC 7986 provides updated recommendations. This is a 
             new property.  -->
        
        <sch:rule context="vcalendar/properties/property/conference">            
            
            <sch:assert test="matches(parameters/parameter/value/this-is-the-value, '^URI$', 'i')">
                The CONFERENCE property must have a VALUE parameter, the value of the VALUE parameter must be URI.
                RFC 7986: New properties defined in this specification use the term "no
                default" in the "Value Type" definition to indicate that the "VALUE"
                parameter has to be included.
            </sch:assert>         
            
            <sch:assert test="not(parameters/parameter[feature][2])">
                If the CONFERENCE property has at most one FEATURE parameter.
            </sch:assert>        
            
            <sch:assert test="not(parameters/parameter[label][2])">
                If the CONFERENCE property has at most one LABEL parameter.
            </sch:assert>       
            
            <sch:assert test="not(parameters/parameter[language][2])">
                If the CONFERENCE property has at most one LANGUAGE parameter.
            </sch:assert> 
            
        </sch:rule>
        
    </sch:pattern>
     
</sch:schema>
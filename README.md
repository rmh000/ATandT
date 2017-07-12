# ATandT
files used in ATandT assessment

   status  of my Appointment System


  If no CGI parameters are passed to the back-end PERL script then the
   PERL script renders the HTML document which contains the front-end.

      this is done.... redirect from perl 

2) If any of the AJAX parameters are provided, then this request is
   considered to be an AJAX call and the PERL script renders the results
   as a JSON document.

    Still in progress...  setting up Ajax stuff...  

3) If this is a form submission, the PERL script will validate the inputs.
   If validation is successfull, add a NEW appointment to the SQL database
   using the values from the HTML form. The PERL script then renders the
   HTML document which contains the front-end just like in #1. If there
   errors in the validation, display them on the front end.

    Done, except at end of script, I haven't invoked the main form again... still working that to ensure it exits then posts form... 

The frontend is a single web page which displays a "NEW" button, an
empty text field with a "SEARCH" button and the bottom of the page will
be an (initially empty) area for displaying the appointments in a table.

   Done , except I'm still working on "getappointments" 

If the user enters text into the search text box and hits the SEARCH
button, the appointments area should clear and getAppointments() should
be called with text from the search box.  If the search text box is empty
when the SEARCH button is clicked, then ALL of the appointments should appear.
This should dynamically refresh the Table DOM, and not refresh the entire page.

    Not completed yet... working the "getappointments" call still 

The page should also contain a hidden form which contains fields for
adding a new appointment to the database.  Pressing the "NEW" button
changes the "NEW" button to "ADD" and shows the hidden form.

   DONE 

The hidden form should include a "CANCEL" button.  If the "CANCEL" button is
pressed, the form is hidden and the "ADD" button becomes "NEW" again.

   Done 

The DATE input should contain a date picker with built in validation.
(Appointments shouldn't be made in the past).

    Done , though my Datepicker invocation isn't honoring the  date range yet...  it does format date properly for insertion into a "datetime" field..  I think I have the answer, will test... 

When data is entered into the form and the "ADD" button is pressed, the
form should be validated, and then submitted to the back-end. Validation should check for 
missing data and an invalid date/time. Submitting the form also
reloads the entire web page.  (In other words, the form should be
submitted using normal HTML form semantics.  You don't need to submit the
form as an AJAX call.)

     Done, except at end, haven't resolved ending script, THEN  invoking "Main" form again...  

  

final 

   I can complete this with more time...  I've been working the Ajax end more than anything, and would probably need 1/2 a day to complete... I have a slightly similar function I put together for another site I'm using as a template....  shouldn't be too difficult given that... 

    I need to resolve the "end of script, bring up main form" after exiting the code... working this still with test version..  

    need to resolve range issue to disallow prior date selections...  doc on this is sketchy, but I'm sure I'll figure it out... 

Note this is best invoked with Chrome, which allows my pattern on the Time Input... 








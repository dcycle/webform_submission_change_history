Webform Submission Notes
=====

[![CircleCI](https://circleci.com/gh/dcycle/webform_submission_change_history.svg?style=svg)](https://circleci.com/gh/dcycle/webform_submission_change_history)

A Drupal 8 module which allows administrators to track notes on webform submissions. For example, if a user requests an appointment through a webform submission, we might want to track what we did with that appointment request, something like:

* status changed from Left Voicemail to Scheduled - May 10, 2018, 11:32 am - user_a
* status changed from Left Scheduled to Canceled - May 12, 2018, 10:20 am - user_a

Usage
-----

### Step 1: Install as you would any Drupal module:

    drush dl webform_submission_change_history

(Or see the section, "To install a local version for development or evaluation", below.)

### Step 2: Set up logging

Taking the contact form as an example, make sure event logging is set up for that form's submissions at `/admin/structure/webform/manage/contact/settings/submissions`, or globally at
`/admin/structure/webform/config/submissions`.

### Step 3: Patch the Webform module

In order for update events to be logged for Webform submissions, you need to apply [this patch](https://www.drupal.org/project/webform/issues/2972498#comment-12613727) to Webform.

### Step 4: Use the right permissions

Make sure your users who need to access the log have the "Access the webform submission log" (`access webform submission log`) and "View any webform submission" (`view any webform submission`) permission.

### Step 5: Modify a submission

* submit a Contact form submission at `/webform/contact/test`;
* modify something in that submission at `/admin/structure/webform/manage/contact/submission/1/edit`;

### Step 6: Go back to the submission edit form

If you go back to `/admin/structure/webform/manage/contact/submission/1/edit` you will see the history of modifications to that submission.

Issue queue and pull requests
-----

Please use the [Drupal issue queue](https://www.drupal.org/project/issues/search/webform_submission_change_history) for this project.

Please run tests by running `./scripts/test.sh` (you do not need to install or configure anything except Docker to run this) on your proposed changes before suggesting patches. Use [GitHub](https://github.com/dcycle/webform_submission_change_history) for pull requests.

Development
-----

The code is available on [GitHub](https://github.com/dcycle/webform_submission_change_history) and [Drupal.org](https://www.drupal.org/project/webform_submission_change_history).

Automated testing is on [CircleCI](https://circleci.com/gh/dcycle/webform_submission_change_history).

To install a local version for development or evaluation
-----

Install Docker and run `./scripts/deploy.sh`.

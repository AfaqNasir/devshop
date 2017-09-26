;
; Loads the DevMaster install profile from drupal.org.
;
; This makefile is used by the DevShop standalone installer to build devmaster.
;

core = 7.x
api = 2

projects[drupal][type] = core
projects[drupal][version] = 7.56

; RELEASE
; Leave RELEASE_LINE in place for replacement by release script in RoboFile.php
;RELEASE_LINE

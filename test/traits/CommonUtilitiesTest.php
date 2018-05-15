<?php

namespace Drupal\webform_submission_change_history\Tests;

use Drupal\webform_submission_change_history\traits\CommonUtilities;
use PHPUnit\Framework\TestCase;

class DummyClassUsesCommonUtilities {
  use CommonUtilities;
}

/**
 * Test CommonUtilities.
 *
 * @group myproject
 */
class CommonUtilitiesTest extends TestCase {

  /**
   * Smoke test.
   */
  public function testSmoke() {
    $object = new DummyClassUsesCommonUtilities();

    $this->assertTrue(is_object($object));
  }

}

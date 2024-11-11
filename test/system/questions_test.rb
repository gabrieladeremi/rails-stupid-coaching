require "application_system_test_case"


class QuestionsTest < ApplicationSystemTestCase
  # [...]

  test "saying Hello yields a grumpy response from the coach" do
    visit ask_url
    fill_in "question", with: "Hello"
    click_on "Ask"
    take_screenshot
    assert_text "I don't care, get dressed and go to work!"
  end

  test "asking question yields a silly response from the coach" do
    visit ask_url
    fill_in "question", with: "what are we working on today ?"
    click_on "Ask"

    assert_text "Silly question, get dressed and go to work!."
  end

  test "confirm he or she is going to work" do
    visit ask_url
    fill_in "question", with: "I am going to work"
    click_on "Ask"

    assert_text "Great!"
  end

  test "for case insensitivity" do
    visit ask_url
    fill_in "question", with: "I am GOING to work"
    click_on "Ask"

    assert_text "Great!"
  end
end

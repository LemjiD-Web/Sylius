@applying_catalog_promotions
Feature: Seeing applied catalog promotions on variants list
    In order to be attracted to products
    As a Customer
    I want to see discounted products in the catalog

    Background:
        Given the store operates on a single channel in "United States"
        And the store has a "T-Shirt" configurable product
        And this product has "PHP T-Shirt" variant priced at "$20.00"
        And this product has "Kotlin T-Shirt" variant priced at "$40.00"
        And this product has "Python T-Shirt" variant priced at "$40.00"
        And there is a catalog promotion with "winter_sale" code and "Winter sale" name
        And it will be applied on "PHP T-Shirt" variant
        And it will reduce price by 50%

    @api
    Scenario: Seeing applied catalog promotion on variant
        When I view variants
        Then I should see "PHP T-Shirt" variant is discounted from "$20.00" to "$10.00" with "Winter sale" promotion
        And I should see "Kotlin T-Shirt" variant and "Python T-Shirt" variant are not discounted

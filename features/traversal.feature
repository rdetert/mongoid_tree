Feature: Tree Searches / Traversals
    In order to traverse
    As a user
    I want a depth-first representation of the tree
  
    Scenario: Depth First Search
        # For a visual representation see http://en.wikipedia.org/wiki/File:Depth-first-tree.svg
        Given I have no nodes
        And the following nodes exist:   
             | name    | parent |
             | Node_1  |        |
             | Node_2  | Node_1 |
             | Node_7  | Node_1 |
             | Node_8  | Node_1 |
             | Node_3  | Node_2 |
             | Node_6  | Node_2 |
             | Node_9  | Node_8 |
             | Node_12 | Node_8 |
             | Node_4  | Node_3 |
             | Node_5  | Node_3 |
             | Node_10 | Node_9 |
             | Node_11 | Node_9 |
        And I should have 12 Nodes
        When I request the children depth first
        Then I should get the children in the following order
            |Node_1|
            |Node_2|
            |Node_3|
            |Node_4|
            |Node_5|
            |Node_6|
            |Node_7|
            |Node_8|
            |Node_9|
            |Node_10|
            |Node_11|
            |Node_12|
    
    
        Scenario: Depth First Search with other create Order
            # For a visual representation see http://en.wikipedia.org/wiki/File:Depth-first-tree.svg
            Given I have no nodes
            And the following nodes exist:   
                 | name    | parent |
                 | Node_1  |        |
                 | Node_2  | Node_1 |
                 | Node_7  | Node_1 |
                 | Node_8  | Node_1 |
                 | Node_9  | Node_8 |
                 | Node_10 | Node_9 |
                 | Node_11 | Node_9 |
                 | Node_3  | Node_2 |
                 | Node_6  | Node_2 |
                 | Node_12 | Node_8 |
                 | Node_4  | Node_3 |
                 | Node_5  | Node_3 |
            And I should have 12 Nodes
            When I request the children depth first
            Then I should get the children in the following order
                |Node_1|
                |Node_2|
                |Node_3|
                |Node_4|
                |Node_5|
                |Node_6|
                |Node_7|
                |Node_8|
                |Node_9|
                |Node_10|
                |Node_11|
                |Node_12|
                
        # This scenario creates a tree using ".children << node", insert_before(node), insert_after(node)
        # Details in the "And i have a tree" step
        Scenario: Depth First Search with insert
            # For a visual representation see http://en.wikipedia.org/wiki/File:Depth-first-tree.svg
            Given I have no nodes
            And I create a tree                
            And I should have 12 Nodes
            When I request the children depth first
            Then I should get the children in the following order
                |Node_1|
                |Node_2|
                |Node_3|
                |Node_4|
                |Node_5|
                |Node_6|
                |Node_7|
                |Node_8|
                |Node_9|
                |Node_10|
                |Node_11|
                |Node_12|
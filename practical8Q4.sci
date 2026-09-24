clc;
clear;
 
// Accept inputs
scilab = input("Enter students registered for Scilab: ");
ai = input("Enter students registered for Artificial Intelligence: ");
cloud = input("Enter students registered for Cloud Computing: ");
 
scilab_ai = input("Enter students registered for Scilab and AI: ");
ai_cloud = input("Enter students registered for AI and Cloud: ");
scilab_cloud = input("Enter students registered for Scilab and Cloud: ");
 
all_three = input("Enter students registered for all three workshops: ");
 
// Apply Inclusion-Exclusion Principle
total = scilab + ai + cloud - scilab_ai - ai_cloud - scilab_cloud + all_three;
 
// Display result
disp("Total number of students registered in at least one workshop is:");
disp(total);
 

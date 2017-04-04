function [balance] = short
weeks = input('How many weeks do you park? ');
days = input('How many days do you park? ');
hours = input('How many hours do you park? ');
minutes = input('How many minutes do you park? ');
balance= weeks*175 + days*25 + ceil((hours*60 + minutes-30)/20);
end
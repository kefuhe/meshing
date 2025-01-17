function rc = rotatefaultcoords(c, dip, nc)
% rotatefaultcoords  Rotates a set of fault coordinates to specified dips.
%
%   RC = rotatefaultcoords(C, DIP) rotates the coordinates in array C to the 
%   specified DIP. The coordinates are assumed to have been generated by 
%   extractcoords.m and are in a 2n-by-3 array, where n is the number of 
%   coordinates that define the fault trace, and the second group of n
%   coordinates define the bottom.
%
%   RC = rotatefaultcoords(C, DIP, NC) carries out the rotation for multiple
%   faults, with all coordinates defined in C. In this case, DIP can be a 
%   scalar or a vector containing a dip value for each fault entity. The
%   number of coordinates in each entity (the 2n referred to above) should
%   be given as NC.
%  

% Check whether this is a single fault or multiple faults
if ~exist('nc', 'var')
   nc = size(c, 1);
end

% Expand scalar dip to one value per file
if numel(dip) == 1
   dip = dip.*ones(size(nc));
end

% Indices of bottom coordinates
nc = nc(:); % Assure column vector
ends = cumsum(nc(:));
begs = [nc(1)/2 + 1; ends(1:end-1) + nc(2:end)/2 + 1];

rc = c;
% For each fault...
for i = 1:numel(nc)
   % Extract the coordinates
   coords = c(begs(i):ends(i), :);
   % Rotate the coordinates by the specified dip
   rotcoords = arbrot(coords, [], dip(i));
   % Place the rotated coordinates into the new array
   rc(begs(i):ends(i), :) = rotcoords;
end
   
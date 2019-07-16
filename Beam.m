clear;
clc;
n=input('How many loads are present on the beam: ');
%prompt the user for number of loads on the beam
for i=1:n %prompts user for data using i as the integers between 1 and n
    w(i)=input(['What is weight number ' num2str(i) ' in Newtons: ']);%prompt user for weight 
    p(i)=input(['Where is weight number ' num2str(i) ' along beam in m: ']);%prompt user for position along beam
end
 d=input('What is the uniform flexural rigidity of your beam in Nm^2: ')
p = [p input('What is the length of your beam in m: ')];
x = [0 p];
for [0 x](i) < [0 p];
deflect=(w/d)*(1/6*(x^3)-(p/2)*(x^2))
end
for [0 x](i) > [0 p];
        deflect=(w/d)*((1/6)*(x^3)-(p/2)*(x^2)-(1/6)*(x-p)^3)
end
plot([0 x], [0 deflect])
xlabel('distance along the beam in m');
ylabel('The deflection of the beam in m');
title('The bending moment acting on the Beam');


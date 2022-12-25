load('thnx.mat')
open('characteristics.slx')
mo=sim('characteristics.slx');
z_informat=stepinfo(mo.z_response.Data,mo.z_response.Time)
y_informat=stepinfo(mo.y_response.Data,mo.y_response.Time)
phi_informat=stepinfo(mo.phi_response.Data,mo.phi_response.Time)

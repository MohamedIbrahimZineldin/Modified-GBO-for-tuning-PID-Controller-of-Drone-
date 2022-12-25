%% Compute Rise time, settling time, and other step-response characteristics
open('characteristics.slx')
mo=sim('characteristics.slx');
z_informat=stepinfo(mo.z_response.Data,mo.z_response.Time)
y_informat=stepinfo(mo.y_response.Data,mo.y_response.Time)
open('phi_charc.slx')
mo2=sim('phi_charc.slx');
phi_informat=stepinfo(mo2.phi_response.Data,mo2.phi_response.Time)
z_table= rows2vars(struct2table(z_informat));
y_table= rows2vars(struct2table(y_informat));
phi_table= rows2vars(struct2table(phi_informat));
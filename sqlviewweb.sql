use web
create view viewdenopbai as
(select users.UserID,users.HoTen,DapAnID,DeThiID
from dapanhv left JOIN users on dapanhv.UserID=users.UserID)

create view viewdanhsachnopbai as(
select viewdenopbai.*,dethi.MaKH
from viewdenopbai left join dethi on viewdenopbai.DeThiID=dethi.MaDeThi)
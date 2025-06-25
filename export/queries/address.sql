select
    address_id,
    address,
    address2,
    district,
    city_id,
    postal_code,
    phone,
    st_astext(location) as location,
    last_update
from address

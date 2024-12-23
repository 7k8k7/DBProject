import hashlib

def get_form_field(request, field):
    """
    get a field from json
    :param request:
    :param field:
    :return:
    """
    data = request.form.get(field)
    if data is not None:
        return data

    return None


def md5(s: str) -> str:
    md5_obj = hashlib.md5()
    md5_obj.update(s.encode('utf-8'))
    return md5_obj.hexdigest()
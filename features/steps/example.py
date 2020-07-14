@given('some setup condition')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given some setup condition')


@given('some other setup action')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given some other setup action')


@given('some condition')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given some condition')


@when('some action is taken')
def step_impl(context):
    raise NotImplementedError(u'STEP: When some action is taken')


@then('some result is expected')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then some result is expected')


@given('some other condition')
def step_impl(context):
    raise NotImplementedError(u'STEP: Given some other condition')


@then('some other result is expected')
def step_impl(context):
    raise NotImplementedError(u'STEP: Then some other result is expected')

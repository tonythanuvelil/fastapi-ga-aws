from apps.scrapper import wiki


def test_wiki():
    assert 'god' in wiki()
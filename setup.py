from setuptools import setup

setup(name='KMOL Flask project',
      version='1.0',
      description='OpenShift App',
      author='KMOL',
      author_email='test@mde.tw',
      url='https://www.python.org/community/sigs/current/distutils-sig',
      install_requires=['Flask>=0.10.1', 'MarkupSafe', 'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'],
     )

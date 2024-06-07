from setuptools import setup, find_packages

setup(
    name="code_analysis_integration",
    version="0.1.0",
    packages=find_packages(),
    install_requires=[
        'pytest',
        # Add other dependencies here
    ],
    entry_points={
        'console_scripts': [
            'run-sonar=code_analysis_integration.sonar:main',
        ],
    },
    author="Your Name",
    author_email="your.email@example.com",
    description="A package to automate running pytest and transforming reports.",
    long_description=open('README.md').read(),
    long_description_content_type='text/markdown',
    url="https://your-repository-url",
)

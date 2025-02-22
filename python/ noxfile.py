"""Nox file for running tests against multiple Python versions."""

import nox


def install(session, groups, root=True):
    """Install the package in the current session."""
    if root:
        groups = ["main", *groups]

    session.run_always(
        "poetry",
        "install",
        "--no-root",
        "--sync",
        f"--only={','.join(groups)}",
        external=True,
    )
    if root:
        session.install(".")


@nox.session(python=["3.9", "3.10", "3.11", "3.12"])
def tests(session):
    """Run test suite against Python versions 3.9, 3.10, 3.11, and 3.12."""
    session.install(".")
    session.install(
        "pytest",
        "pytest-asyncio",
        "pytest-cov",
        "pytest-pretty",
        "pytest-randomly",
        "pytest-sugar",
        "pytest-xdist",
    )
    session.run(
        "poetry",
        "run",
        "pytest",
        "--config-file=pyproject.toml",
        "--cov-config=pyproject.toml",
        external=True,
    )

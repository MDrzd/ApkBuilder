.class public Lorg/jf/baksmali/AnalysisArguments$CheckPackagePrivateArgument;
.super Ljava/lang/Object;


# instance fields
.field public checkPackagePrivateAccess:Z
    .annotation runtime Lcom/beust/jcommander/Parameter;
        description = "Use the package-private access check when calculating vtable indexes. This is enabled by default for oat files. For odex files, this is only needed for odexes from 4.2.0. It was reverted in 4.2.1."
        names = {
            "--check-package-private-access",
            "--package-private",
            "--checkpp",
            "--pp"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jf/baksmali/AnalysisArguments$CheckPackagePrivateArgument;->checkPackagePrivateAccess:Z

    return-void
.end method

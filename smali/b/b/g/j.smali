.class final Lb/b/g/j;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:Lb/b/g/af;

.field public c:Lb/b/g/af;

.field public d:Lb/b/g/af;

.field public e:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lb/b/g/j;->e:Ljava/util/ArrayList;

    return-void
.end method

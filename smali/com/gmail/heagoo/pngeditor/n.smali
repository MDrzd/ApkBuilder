.class public Lcom/gmail/heagoo/pngeditor/n;
.super Ljava/lang/Object;


# instance fields
.field private a:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/n;->a:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/gmail/heagoo/pngeditor/n;->a:Z

    return-void
.end method


# virtual methods
.method public b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/n;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public b_()V
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/n;->a:Z

    return-void
.end method

.method public c()Z
    .registers 2

    iget-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/n;->a:Z

    return v0
.end method

.method public d()V
    .registers 3

    iget-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/n;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lb/b/h/q;

    const-string v1, "immutable instance"

    invoke-direct {v0, v1}, Lb/b/h/q;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e()V
    .registers 3

    iget-boolean v0, p0, Lcom/gmail/heagoo/pngeditor/n;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lb/b/h/q;

    const-string v1, "mutable instance"

    invoke-direct {v0, v1}, Lb/b/h/q;-><init>(Ljava/lang/String;)V

    throw v0
.end method

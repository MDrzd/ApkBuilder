.class public abstract Lb/b/d/a/a;
.super Ljava/lang/Object;

# interfaces
.implements Lb/b/d/a/b;


# instance fields
.field private final a:Lcom/gmail/heagoo/neweditor/z;

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/gmail/heagoo/neweditor/z;

    invoke-direct {v0}, Lcom/gmail/heagoo/neweditor/z;-><init>()V

    iput-object v0, p0, Lb/b/d/a/a;->a:Lcom/gmail/heagoo/neweditor/z;

    const/4 v0, 0x0

    iput v0, p0, Lb/b/d/a/a;->b:I

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lb/b/d/a/a;->b:I

    return v0
.end method

.method protected final a(I)V
    .registers 2

    iget p1, p0, Lb/b/d/a/a;->b:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lb/b/d/a/a;->b:I

    return-void
.end method

.method public final a(II)V
    .registers 4

    iget-object v0, p0, Lb/b/d/a/a;->a:Lcom/gmail/heagoo/neweditor/z;

    invoke-virtual {v0, p1, p2}, Lcom/gmail/heagoo/neweditor/z;->a(II)V

    return-void
.end method

.method public final b()I
    .registers 3

    iget-object v0, p0, Lb/b/d/a/a;->a:Lcom/gmail/heagoo/neweditor/z;

    iget v1, p0, Lb/b/d/a/a;->b:I

    invoke-virtual {v0, v1}, Lcom/gmail/heagoo/neweditor/z;->a(I)I

    move-result v0

    if-ltz v0, :cond_0

    return v0

    :cond_0
    iget v0, p0, Lb/b/d/a/a;->b:I

    return v0
.end method

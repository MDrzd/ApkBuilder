.class public final Lorg/a/a/v;
.super Ljava/lang/Object;


# instance fields
.field public a:[Lorg/a/a/b;

.field public b:I

.field public c:Z

.field public d:I

.field public e:Z

.field public f:I

.field public g:I

.field public h:Lorg/a/a/x;

.field public i:I

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    new-array v0, v0, [Lorg/a/a/b;

    iput-object v0, p0, Lorg/a/a/v;->a:[Lorg/a/a/b;

    const/4 v0, -0x1

    iput v0, p0, Lorg/a/a/v;->b:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/a/a/v;->c:Z

    iput v0, p0, Lorg/a/a/v;->d:I

    iput-boolean v1, p0, Lorg/a/a/v;->e:Z

    iput v1, p0, Lorg/a/a/v;->f:I

    iput v1, p0, Lorg/a/a/v;->g:I

    iput v0, p0, Lorg/a/a/v;->i:I

    return-void
.end method

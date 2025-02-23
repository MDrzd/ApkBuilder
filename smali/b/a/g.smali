.class public final Lb/a/g;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field private b:[I

.field private c:[I

.field private d:I


# direct methods
.method public constructor <init>([I[III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lb/a/g;->b:[I

    iput-object p2, p0, Lb/a/g;->c:[I

    iput p3, p0, Lb/a/g;->d:I

    iput p4, p0, Lb/a/g;->a:I

    return-void
.end method


# virtual methods
.method public final a()[I
    .registers 2

    iget-object v0, p0, Lb/a/g;->b:[I

    return-object v0
.end method

.method public final b()[I
    .registers 2

    iget-object v0, p0, Lb/a/g;->c:[I

    return-object v0
.end method

.method public final c()I
    .registers 2

    iget v0, p0, Lb/a/g;->d:I

    return v0
.end method

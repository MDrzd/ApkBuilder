.class public Lcom/gmail/heagoo/common/ac;
.super Ljava/lang/Object;

# interfaces
.implements Lb/a/a/a;


# instance fields
.field private final a:[B

.field private b:I


# direct methods
.method public varargs constructor <init>([B)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gmail/heagoo/common/ac;->a:[B

    return-void
.end method


# virtual methods
.method public a()B
    .registers 4

    iget-object v0, p0, Lcom/gmail/heagoo/common/ac;->a:[B

    iget v1, p0, Lcom/gmail/heagoo/common/ac;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/gmail/heagoo/common/ac;->b:I

    aget-byte v0, v0, v1

    return v0
.end method

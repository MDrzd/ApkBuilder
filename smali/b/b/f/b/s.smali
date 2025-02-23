.class final Lb/b/f/b/s;
.super Ljava/lang/ThreadLocal;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic initialValue()Ljava/lang/Object;
    .registers 3

    new-instance v0, Lb/b/f/b/t;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b/f/b/t;-><init>(B)V

    return-object v0
.end method

.class final Lc/a/a/j;
.super Ljava/lang/Object;

# interfaces
.implements Lc/a/a/w;


# instance fields
.field private synthetic a:Lc/a/a/a;


# direct methods
.method private constructor <init>(Lc/a/a/a;)V
    .registers 2

    iput-object p1, p0, Lc/a/a/j;->a:Lc/a/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lc/a/a/a;B)V
    .registers 3

    invoke-direct {p0, p1}, Lc/a/a/j;-><init>(Lc/a/a/a;)V

    return-void
.end method


# virtual methods
.method public final a()Lc/a/a/v;
    .registers 2

    new-instance v0, Lc/a/a/i;

    invoke-direct {v0}, Lc/a/a/i;-><init>()V

    return-object v0
.end method

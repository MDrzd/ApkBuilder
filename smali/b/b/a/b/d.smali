.class public final Lb/b/a/b/d;
.super Lb/b/h/h;


# static fields
.field public static final a:Lb/b/a/b/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lb/b/a/b/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb/b/a/b/d;-><init>(I)V

    sput-object v0, Lb/b/a/b/d;->a:Lb/b/a/b/d;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lb/b/h/h;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(I)Lb/b/a/b/e;
    .registers 2

    invoke-virtual {p0, p1}, Lb/b/a/b/d;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/b/a/b/e;

    return-object p1
.end method

.method public final a(ILb/b/f/c/ae;Lb/b/f/c/y;Lb/b/a/b/c;)V
    .registers 6

    new-instance v0, Lb/b/a/b/e;

    invoke-direct {v0, p2, p3, p4}, Lb/b/a/b/e;-><init>(Lb/b/f/c/ae;Lb/b/f/c/y;Lb/b/a/b/c;)V

    invoke-virtual {p0, p1, v0}, Lb/b/a/b/d;->a(ILjava/lang/Object;)V

    return-void
.end method

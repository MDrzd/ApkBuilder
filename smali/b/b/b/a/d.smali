.class final Lb/b/b/a/d;
.super Ljava/lang/Object;


# instance fields
.field a:Ljava/lang/String;

.field b:Ljava/util/EnumSet;

.field c:Ljava/util/EnumSet;

.field d:[Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v0, Ljava/lang/annotation/ElementType;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lb/b/b/a/d;->b:Ljava/util/EnumSet;

    const-class v0, Lb/b/b/a/f;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Lb/b/b/a/d;->c:Ljava/util/EnumSet;

    return-void
.end method

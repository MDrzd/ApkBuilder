.class final enum Lb/b/g/a/d;
.super Lb/b/g/a/b;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 p2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/b/g/a/b;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Ljava/util/BitSet;I)I
    .registers 4

    :goto_0
    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p2

    invoke-static {p2}, Lb/b/g/a/a;->a(I)Z

    move-result v0

    if-eqz v0, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return p2
.end method

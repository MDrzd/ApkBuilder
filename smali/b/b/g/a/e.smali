.class final enum Lb/b/g/a/e;
.super Lb/b/g/a/b;


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 p2, 0x2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lb/b/g/a/b;-><init>(Ljava/lang/String;IB)V

    return-void
.end method


# virtual methods
.method final a(Ljava/util/BitSet;I)I
    .registers 3

    invoke-virtual {p1, p2}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p1

    return p1
.end method

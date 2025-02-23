.class public abstract Lorg/jf/baksmali/Adaptors/MethodItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field protected final codeAddress:I


# direct methods
.method protected constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/jf/baksmali/Adaptors/MethodItem;->codeAddress:I

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    check-cast p1, Lorg/jf/baksmali/Adaptors/MethodItem;

    invoke-virtual {p0, p1}, Lorg/jf/baksmali/Adaptors/MethodItem;->compareTo(Lorg/jf/baksmali/Adaptors/MethodItem;)I

    move-result p1

    return p1
.end method

.method public compareTo(Lorg/jf/baksmali/Adaptors/MethodItem;)I
    .registers 5

    iget v0, p0, Lorg/jf/baksmali/Adaptors/MethodItem;->codeAddress:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p1, Lorg/jf/baksmali/Adaptors/MethodItem;->codeAddress:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jf/baksmali/Adaptors/MethodItem;->getSortOrder()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p1}, Lorg/jf/baksmali/Adaptors/MethodItem;->getSortOrder()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Double;->compareTo(Ljava/lang/Double;)I

    move-result p1

    return p1

    :cond_0
    return v0
.end method

.method public getCodeAddress()I
    .registers 2

    iget v0, p0, Lorg/jf/baksmali/Adaptors/MethodItem;->codeAddress:I

    return v0
.end method

.method public abstract getSortOrder()D
.end method

.method public abstract writeTo(Lorg/jf/util/IndentingWriter;)Z
.end method

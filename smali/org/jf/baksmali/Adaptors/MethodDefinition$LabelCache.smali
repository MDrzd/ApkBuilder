.class public Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;
.super Ljava/lang/Object;


# instance fields
.field protected labels:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;->labels:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getLabels()Ljava/util/Collection;
    .registers 2

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;->labels:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public internLabel(Lorg/jf/baksmali/Adaptors/LabelMethodItem;)Lorg/jf/baksmali/Adaptors/LabelMethodItem;
    .registers 3

    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;->labels:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jf/baksmali/Adaptors/LabelMethodItem;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jf/baksmali/Adaptors/MethodDefinition$LabelCache;->labels:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1
.end method

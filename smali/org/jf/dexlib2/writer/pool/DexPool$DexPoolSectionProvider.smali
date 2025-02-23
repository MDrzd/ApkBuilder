.class public Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;
.super Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/pool/DexPool;


# direct methods
.method protected constructor <init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lorg/jf/dexlib2/writer/pool/DexPool;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;-><init>(Lorg/jf/dexlib2/writer/DexWriter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAnnotationSection()Lorg/jf/dexlib2/writer/AnnotationSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getAnnotationSection()Lorg/jf/dexlib2/writer/pool/AnnotationPool;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationSection()Lorg/jf/dexlib2/writer/pool/AnnotationPool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/pool/AnnotationPool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lorg/jf/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/pool/AnnotationPool;-><init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getAnnotationSetSection()Lorg/jf/dexlib2/writer/AnnotationSetSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getAnnotationSetSection()Lorg/jf/dexlib2/writer/pool/AnnotationSetPool;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationSetSection()Lorg/jf/dexlib2/writer/pool/AnnotationSetPool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/pool/AnnotationSetPool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lorg/jf/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/pool/AnnotationSetPool;-><init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getClassSection()Lorg/jf/dexlib2/writer/ClassSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getClassSection()Lorg/jf/dexlib2/writer/pool/ClassPool;

    move-result-object v0

    return-object v0
.end method

.method public getClassSection()Lorg/jf/dexlib2/writer/pool/ClassPool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/pool/ClassPool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lorg/jf/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/pool/ClassPool;-><init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getFieldSection()Lorg/jf/dexlib2/writer/FieldSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getFieldSection()Lorg/jf/dexlib2/writer/pool/FieldPool;

    move-result-object v0

    return-object v0
.end method

.method public getFieldSection()Lorg/jf/dexlib2/writer/pool/FieldPool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/pool/FieldPool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lorg/jf/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/pool/FieldPool;-><init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getMethodSection()Lorg/jf/dexlib2/writer/MethodSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getMethodSection()Lorg/jf/dexlib2/writer/pool/MethodPool;

    move-result-object v0

    return-object v0
.end method

.method public getMethodSection()Lorg/jf/dexlib2/writer/pool/MethodPool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/pool/MethodPool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lorg/jf/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/pool/MethodPool;-><init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getProtoSection()Lorg/jf/dexlib2/writer/ProtoSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getProtoSection()Lorg/jf/dexlib2/writer/pool/ProtoPool;

    move-result-object v0

    return-object v0
.end method

.method public getProtoSection()Lorg/jf/dexlib2/writer/pool/ProtoPool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/pool/ProtoPool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lorg/jf/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/pool/ProtoPool;-><init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getStringSection()Lorg/jf/dexlib2/writer/StringSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getStringSection()Lorg/jf/dexlib2/writer/pool/StringPool;

    move-result-object v0

    return-object v0
.end method

.method public getStringSection()Lorg/jf/dexlib2/writer/pool/StringPool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/pool/StringPool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lorg/jf/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/pool/StringPool;-><init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getTypeListSection()Lorg/jf/dexlib2/writer/TypeListSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getTypeListSection()Lorg/jf/dexlib2/writer/pool/TypeListPool;

    move-result-object v0

    return-object v0
.end method

.method public getTypeListSection()Lorg/jf/dexlib2/writer/pool/TypeListPool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/pool/TypeListPool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lorg/jf/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/pool/TypeListPool;-><init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

.method public bridge synthetic getTypeSection()Lorg/jf/dexlib2/writer/TypeSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->getTypeSection()Lorg/jf/dexlib2/writer/pool/TypePool;

    move-result-object v0

    return-object v0
.end method

.method public getTypeSection()Lorg/jf/dexlib2/writer/pool/TypePool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/pool/TypePool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/pool/DexPool$DexPoolSectionProvider;->this$0:Lorg/jf/dexlib2/writer/pool/DexPool;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/pool/TypePool;-><init>(Lorg/jf/dexlib2/writer/pool/DexPool;)V

    return-object v0
.end method

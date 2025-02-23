.class public Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;
.super Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/builder/DexBuilder;


# direct methods
.method protected constructor <init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    invoke-direct {p0, p1}, Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;-><init>(Lorg/jf/dexlib2/writer/DexWriter;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getAnnotationSection()Lorg/jf/dexlib2/writer/AnnotationSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getAnnotationSection()Lorg/jf/dexlib2/writer/builder/BuilderAnnotationPool;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationSection()Lorg/jf/dexlib2/writer/builder/BuilderAnnotationPool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationPool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationPool;-><init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getAnnotationSetSection()Lorg/jf/dexlib2/writer/AnnotationSetSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getAnnotationSetSection()Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;

    move-result-object v0

    return-object v0
.end method

.method public getAnnotationSetSection()Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderAnnotationSetPool;-><init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getClassSection()Lorg/jf/dexlib2/writer/ClassSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getClassSection()Lorg/jf/dexlib2/writer/builder/BuilderClassPool;

    move-result-object v0

    return-object v0
.end method

.method public getClassSection()Lorg/jf/dexlib2/writer/builder/BuilderClassPool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderClassPool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderClassPool;-><init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getFieldSection()Lorg/jf/dexlib2/writer/FieldSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getFieldSection()Lorg/jf/dexlib2/writer/builder/BuilderFieldPool;

    move-result-object v0

    return-object v0
.end method

.method public getFieldSection()Lorg/jf/dexlib2/writer/builder/BuilderFieldPool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderFieldPool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderFieldPool;-><init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getMethodSection()Lorg/jf/dexlib2/writer/MethodSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getMethodSection()Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;

    move-result-object v0

    return-object v0
.end method

.method public getMethodSection()Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderMethodPool;-><init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getProtoSection()Lorg/jf/dexlib2/writer/ProtoSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getProtoSection()Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;

    move-result-object v0

    return-object v0
.end method

.method public getProtoSection()Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderProtoPool;-><init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getStringSection()Lorg/jf/dexlib2/writer/StringSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getStringSection()Lorg/jf/dexlib2/writer/builder/BuilderStringPool;

    move-result-object v0

    return-object v0
.end method

.method public getStringSection()Lorg/jf/dexlib2/writer/builder/BuilderStringPool;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;

    invoke-direct {v0}, Lorg/jf/dexlib2/writer/builder/BuilderStringPool;-><init>()V

    return-object v0
.end method

.method public bridge synthetic getTypeListSection()Lorg/jf/dexlib2/writer/TypeListSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getTypeListSection()Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;

    move-result-object v0

    return-object v0
.end method

.method public getTypeListSection()Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderTypeListPool;-><init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

.method public bridge synthetic getTypeSection()Lorg/jf/dexlib2/writer/TypeSection;
    .registers 2
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    invoke-virtual {p0}, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->getTypeSection()Lorg/jf/dexlib2/writer/builder/BuilderTypePool;

    move-result-object v0

    return-object v0
.end method

.method public getTypeSection()Lorg/jf/dexlib2/writer/builder/BuilderTypePool;
    .registers 3
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation

    new-instance v0, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;

    iget-object v1, p0, Lorg/jf/dexlib2/writer/builder/DexBuilder$DexBuilderSectionProvider;->this$0:Lorg/jf/dexlib2/writer/builder/DexBuilder;

    invoke-direct {v0, v1}, Lorg/jf/dexlib2/writer/builder/BuilderTypePool;-><init>(Lorg/jf/dexlib2/writer/builder/DexBuilder;)V

    return-object v0
.end method

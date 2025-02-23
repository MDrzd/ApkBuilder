.class public abstract Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;
.super Ljava/lang/Object;


# instance fields
.field final synthetic this$0:Lorg/jf/dexlib2/writer/DexWriter;


# direct methods
.method public constructor <init>(Lorg/jf/dexlib2/writer/DexWriter;)V
    .registers 2

    iput-object p1, p0, Lorg/jf/dexlib2/writer/DexWriter$SectionProvider;->this$0:Lorg/jf/dexlib2/writer/DexWriter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getAnnotationSection()Lorg/jf/dexlib2/writer/AnnotationSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getAnnotationSetSection()Lorg/jf/dexlib2/writer/AnnotationSetSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getClassSection()Lorg/jf/dexlib2/writer/ClassSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getFieldSection()Lorg/jf/dexlib2/writer/FieldSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getMethodSection()Lorg/jf/dexlib2/writer/MethodSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getProtoSection()Lorg/jf/dexlib2/writer/ProtoSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getStringSection()Lorg/jf/dexlib2/writer/StringSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getTypeListSection()Lorg/jf/dexlib2/writer/TypeListSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

.method public abstract getTypeSection()Lorg/jf/dexlib2/writer/TypeSection;
    .annotation runtime Ljavax/annotation/Nonnull;
    .end annotation
.end method

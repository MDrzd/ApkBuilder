.class public final Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
.super Ljava/lang/Object;


# instance fields
.field private final mFileName:Ljava/lang/String;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field

.field private mItalic:Z

.field private mResourceId:I

.field private mTtcIndex:I

.field private mVariationSettings:Ljava/lang/String;

.field private mWeight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IZLjava/lang/String;II)V
    .registers 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    iput p2, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mWeight:I

    iput-boolean p3, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mItalic:Z

    iput-object p4, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    iput p5, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mTtcIndex:I

    iput p6, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mResourceId:I

    return-void
.end method


# virtual methods
.method public final getFileName()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mFileName:Ljava/lang/String;

    return-object v0
.end method

.method public final getResourceId()I
    .registers 2

    iget v0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mResourceId:I

    return v0
.end method

.method public final getTtcIndex()I
    .registers 2

    iget v0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mTtcIndex:I

    return v0
.end method

.method public final getVariationSettings()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mVariationSettings:Ljava/lang/String;

    return-object v0
.end method

.method public final getWeight()I
    .registers 2

    iget v0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mWeight:I

    return v0
.end method

.method public final isItalic()Z
    .registers 2

    iget-boolean v0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;->mItalic:Z

    return v0
.end method

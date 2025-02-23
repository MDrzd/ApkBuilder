.class public final Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;


# instance fields
.field private final mEntries:[Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>([Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;)V
    .registers 2
    .param p1    # [Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->mEntries:[Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    return-void
.end method


# virtual methods
.method public final getEntries()[Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;
    .registers 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;->mEntries:[Landroid/support/v4/content/res/FontResourcesParserCompat$FontFileResourceEntry;

    return-object v0
.end method

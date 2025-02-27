.class public Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;
.super Ljava/lang/Object;


# static fields
.field public static final STATUS_OK:I = 0x0

.field public static final STATUS_UNEXPECTED_DATA_PROVIDED:I = 0x2

.field public static final STATUS_WRONG_CERTIFICATES:I = 0x1


# instance fields
.field private final mFonts:[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

.field private final mStatusCode:I


# direct methods
.method public constructor <init>(I[Landroid/support/v4/provider/FontsContractCompat$FontInfo;)V
    .registers 3
    .param p2    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/RestrictTo;
        value = {
            .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    iput-object p2, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->mFonts:[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    return-void
.end method


# virtual methods
.method public getFonts()[Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    .registers 2

    iget-object v0, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->mFonts:[Landroid/support/v4/provider/FontsContractCompat$FontInfo;

    return-object v0
.end method

.method public getStatusCode()I
    .registers 2

    iget v0, p0, Landroid/support/v4/provider/FontsContractCompat$FontFamilyResult;->mStatusCode:I

    return v0
.end method

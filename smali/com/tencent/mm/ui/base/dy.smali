.class final Lcom/tencent/mm/ui/base/dy;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic gEA:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

.field final gEm:Landroid/graphics/Rect;

.field gEn:Landroid/graphics/drawable/Drawable;

.field gEo:Landroid/graphics/drawable/Drawable;

.field gEp:Landroid/graphics/drawable/Drawable;

.field gEq:Landroid/graphics/drawable/Drawable;

.field gEr:I

.field gEs:I

.field gEt:I

.field gEu:I

.field gEv:I

.field gEw:I

.field gEx:I

.field gEy:I

.field gEz:I


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/base/NoMeasuredTextView;)V
    .locals 1
    .parameter

    .prologue
    .line 238
    iput-object p1, p0, Lcom/tencent/mm/ui/base/dy;->gEA:Lcom/tencent/mm/ui/base/NoMeasuredTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/ui/base/dy;->gEm:Landroid/graphics/Rect;

    return-void
.end method

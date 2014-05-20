.class abstract Lcom/tencent/mm/ui/tools/cu;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic hkX:Lcom/tencent/mm/ui/tools/MMGestureGallery;

.field protected hkY:Z


# direct methods
.method public constructor <init>(Lcom/tencent/mm/ui/tools/MMGestureGallery;)V
    .locals 1
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/cu;->hkX:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/mm/ui/tools/cu;->hkY:Z

    .line 83
    return-void
.end method


# virtual methods
.method public abstract play()V
.end method

.method public final vN()Z
    .locals 1

    .prologue
    .line 87
    iget-boolean v0, p0, Lcom/tencent/mm/ui/tools/cu;->hkY:Z

    return v0
.end method

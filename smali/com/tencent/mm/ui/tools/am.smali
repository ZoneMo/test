.class final Lcom/tencent/mm/ui/tools/am;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic hhZ:Lcom/tencent/mm/ui/tools/CropImageNewUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/CropImageNewUI;)V
    .locals 0
    .parameter

    .prologue
    .line 729
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/am;->hhZ:Lcom/tencent/mm/ui/tools/CropImageNewUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1
    .parameter

    .prologue
    .line 733
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/am;->hhZ:Lcom/tencent/mm/ui/tools/CropImageNewUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/CropImageNewUI;->j(Lcom/tencent/mm/ui/tools/CropImageNewUI;)Lcom/tencent/mm/ui/tools/CropImageView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ui/tools/CropImageView;->aNa()V

    .line 734
    return-void
.end method

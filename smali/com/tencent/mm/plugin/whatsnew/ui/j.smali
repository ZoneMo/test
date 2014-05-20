.class final Lcom/tencent/mm/plugin/whatsnew/ui/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)V
    .locals 0
    .parameter

    .prologue
    .line 740
    iput-object p1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/j;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 743
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/j;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/j;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->p(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/j;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->q(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->c(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    .line 744
    return-void
.end method

.class final Lcom/tencent/mm/ui/tools/df;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hlf:Lcom/tencent/mm/ui/tools/MMGestureGallery;

.field final synthetic hlg:Lcom/tencent/mm/ui/tools/dd;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/dd;Lcom/tencent/mm/ui/tools/MMGestureGallery;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 1070
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/df;->hlg:Lcom/tencent/mm/ui/tools/dd;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/df;->hlf:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/df;->hlf:Lcom/tencent/mm/ui/tools/MMGestureGallery;

    invoke-static {v0}, Lcom/tencent/mm/ui/tools/MMGestureGallery;->B(Lcom/tencent/mm/ui/tools/MMGestureGallery;)Lcom/tencent/mm/ui/tools/cv;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/mm/ui/tools/cv;->aro()V

    .line 1075
    return-void
.end method

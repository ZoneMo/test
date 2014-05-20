.class final Lcom/tencent/mm/plugin/whatsnew/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/az;


# instance fields
.field final synthetic ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/a;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ok()Z
    .locals 2

    .prologue
    .line 84
    const-string v0, "MicroMsg.ThirdAnniversaryUI"

    const-string v1, "load error, timer reached"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/a;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Lcom/tencent/mm/plugin/whatsnew/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Lcom/tencent/mm/model/be;->uA()Lcom/tencent/mm/n/ac;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/mm/plugin/whatsnew/ui/a;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v1}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->a(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)Lcom/tencent/mm/plugin/whatsnew/a/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/n/ac;->c(Lcom/tencent/mm/n/x;)V

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/plugin/whatsnew/ui/a;->ffF:Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;

    invoke-static {v0}, Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;->b(Lcom/tencent/mm/plugin/whatsnew/ui/ThirdAnniversaryUI;)V

    .line 91
    const/4 v0, 0x0

    return v0
.end method

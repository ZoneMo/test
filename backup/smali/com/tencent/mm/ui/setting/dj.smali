.class final Lcom/tencent/mm/ui/setting/dj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic hfJ:Lcom/tencent/mm/ui/setting/SettingsNetStatUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/setting/SettingsNetStatUI;)V
    .locals 0
    .parameter

    .prologue
    .line 84
    iput-object p1, p0, Lcom/tencent/mm/ui/setting/dj;->hfJ:Lcom/tencent/mm/ui/setting/SettingsNetStatUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    .line 87
    invoke-static {}, Lcom/tencent/mm/modelstat/r;->Dg()Lcom/tencent/mm/modelstat/j;

    move-result-object v0

    invoke-static {}, Lcom/tencent/mm/platformtools/au;->FF()J

    move-result-wide v1

    const-wide/32 v3, 0x5265c00

    div-long/2addr v1, v3

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/tencent/mm/modelstat/j;->em(I)V

    .line 88
    iget-object v0, p0, Lcom/tencent/mm/ui/setting/dj;->hfJ:Lcom/tencent/mm/ui/setting/SettingsNetStatUI;

    invoke-static {v0}, Lcom/tencent/mm/ui/setting/SettingsNetStatUI;->b(Lcom/tencent/mm/ui/setting/SettingsNetStatUI;)V

    .line 89
    return-void
.end method

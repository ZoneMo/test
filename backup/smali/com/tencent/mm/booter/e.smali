.class final Lcom/tencent/mm/booter/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/sdk/platformtools/ai;


# instance fields
.field final synthetic bZw:Lcom/tencent/mm/booter/CoreService;


# direct methods
.method constructor <init>(Lcom/tencent/mm/booter/CoreService;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/tencent/mm/booter/e;->bZw:Lcom/tencent/mm/booter/CoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/tencent/mm/booter/e;->bZw:Lcom/tencent/mm/booter/CoreService;

    invoke-virtual {v0}, Lcom/tencent/mm/booter/CoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/booter/MMReceivers$AlarmReceiver;->B(Landroid/content/Context;)V

    .line 80
    return-void
.end method

.method public final prepare()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/tencent/mm/booter/e;->bZw:Lcom/tencent/mm/booter/CoreService;

    invoke-virtual {v0}, Lcom/tencent/mm/booter/CoreService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/booter/MMReceivers$AlarmReceiver;->A(Landroid/content/Context;)V

    .line 75
    return-void
.end method

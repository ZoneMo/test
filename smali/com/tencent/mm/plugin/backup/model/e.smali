.class final Lcom/tencent/mm/plugin/backup/model/e;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field final synthetic cJY:Lcom/tencent/mm/plugin/backup/model/d;


# direct methods
.method constructor <init>(Lcom/tencent/mm/plugin/backup/model/d;)V
    .locals 0
    .parameter

    .prologue
    .line 85
    iput-object p1, p0, Lcom/tencent/mm/plugin/backup/model/e;->cJY:Lcom/tencent/mm/plugin/backup/model/d;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 88
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 89
    iget-object v0, p0, Lcom/tencent/mm/plugin/backup/model/e;->cJY:Lcom/tencent/mm/plugin/backup/model/d;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-static {v0, v1}, Lcom/tencent/mm/plugin/backup/model/d;->a(Lcom/tencent/mm/plugin/backup/model/d;Landroid/os/Handler;)Landroid/os/Handler;

    .line 90
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 92
    return-void
.end method

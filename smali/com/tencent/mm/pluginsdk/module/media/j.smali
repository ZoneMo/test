.class final Lcom/tencent/mm/pluginsdk/module/media/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;


# direct methods
.method constructor <init>(Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;)V
    .locals 0
    .parameter

    .prologue
    .line 195
    iput-object p1, p0, Lcom/tencent/mm/pluginsdk/module/media/j;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 199
    sget-object v0, Lcom/tencent/mm/pluginsdk/module/media/p;->fjT:Lcom/tencent/mm/pluginsdk/module/media/p;

    iget-object v1, p0, Lcom/tencent/mm/pluginsdk/module/media/j;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    iget-object v1, v1, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjG:Lcom/tencent/mm/pluginsdk/module/media/p;

    if-ne v0, v1, :cond_0

    .line 200
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/j;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    sget-object v1, Lcom/tencent/mm/pluginsdk/module/media/p;->fjR:Lcom/tencent/mm/pluginsdk/module/media/p;

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjG:Lcom/tencent/mm/pluginsdk/module/media/p;

    .line 201
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/j;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqJ()V

    .line 207
    :goto_0
    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/j;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    sget-object v1, Lcom/tencent/mm/pluginsdk/module/media/p;->fjT:Lcom/tencent/mm/pluginsdk/module/media/p;

    iput-object v1, v0, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->fjG:Lcom/tencent/mm/pluginsdk/module/media/p;

    .line 204
    iget-object v0, p0, Lcom/tencent/mm/pluginsdk/module/media/j;->fjQ:Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/module/media/MusicPlayerUI;->aqH()V

    goto :goto_0
.end method

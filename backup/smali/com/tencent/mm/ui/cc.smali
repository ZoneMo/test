.class final Lcom/tencent/mm/ui/cc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic goc:Lcom/tencent/mm/ui/cb;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/cb;)V
    .locals 0
    .parameter

    .prologue
    .line 192
    iput-object p1, p0, Lcom/tencent/mm/ui/cc;->goc:Lcom/tencent/mm/ui/cb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 196
    invoke-static {}, Lcom/tencent/mm/modelvoice/bc;->Et()Lcom/tencent/mm/modelvoice/al;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/modelvoice/al;->run()V

    .line 197
    invoke-static {}, Lcom/tencent/mm/ai/m;->DF()Lcom/tencent/mm/ai/z;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/ai/z;->run()V

    .line 198
    invoke-static {}, Lcom/tencent/mm/w/ag;->AY()Lcom/tencent/mm/w/o;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/w/o;->run()V

    .line 201
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->aqi()Lcom/tencent/mm/pluginsdk/model/app/aw;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/pluginsdk/model/app/aw;->run()V

    .line 202
    invoke-static {}, Lcom/tencent/mm/plugin/voicereminder/a/f;->alj()Lcom/tencent/mm/plugin/voicereminder/a/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/plugin/voicereminder/a/u;->run()V

    .line 203
    invoke-static {}, Lcom/tencent/mm/sdk/b/a;->ayH()Lcom/tencent/mm/sdk/b/f;

    move-result-object v0

    new-instance v1, Lcom/tencent/mm/c/a/gj;

    invoke-direct {v1}, Lcom/tencent/mm/c/a/gj;-><init>()V

    invoke-interface {v0, v1}, Lcom/tencent/mm/sdk/b/f;->f(Lcom/tencent/mm/sdk/b/e;)Z

    .line 205
    return-void
.end method

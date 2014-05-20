.class final Lcom/tencent/mm/ui/tools/jsapi/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic hoT:Lcom/tencent/mm/protocal/a/bw;

.field final synthetic hoU:Ljava/lang/String;

.field final synthetic hoV:Ljava/lang/String;

.field final synthetic hoW:Lcom/tencent/mm/ui/tools/jsapi/h;

.field final synthetic hoX:Lcom/tencent/mm/ui/tools/jsapi/e;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/e;Lcom/tencent/mm/protocal/a/bw;Ljava/lang/String;Ljava/lang/String;Lcom/tencent/mm/ui/tools/jsapi/h;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 181
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/f;->hoX:Lcom/tencent/mm/ui/tools/jsapi/e;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/jsapi/f;->hoT:Lcom/tencent/mm/protocal/a/bw;

    iput-object p3, p0, Lcom/tencent/mm/ui/tools/jsapi/f;->hoU:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/mm/ui/tools/jsapi/f;->hoV:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/mm/ui/tools/jsapi/f;->hoW:Lcom/tencent/mm/ui/tools/jsapi/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter
    .parameter

    .prologue
    const/16 v4, 0xd

    .line 184
    const-string v0, "MicroMsg.JSOAuthHelper"

    const-string v1, "showDlgForJSOAuth click ok"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/f;->hoT:Lcom/tencent/mm/protocal/a/bw;

    const/4 v1, 0x1

    iput v1, v0, Lcom/tencent/mm/protocal/a/bw;->fCB:I

    .line 186
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 187
    iget-object v1, p0, Lcom/tencent/mm/ui/tools/jsapi/f;->hoT:Lcom/tencent/mm/protocal/a/bw;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 188
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->PE()Lcom/tencent/mm/pluginsdk/model/app/c;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/f;->hoX:Lcom/tencent/mm/ui/tools/jsapi/e;

    invoke-virtual {v1, v4, v2}, Lcom/tencent/mm/pluginsdk/model/app/c;->a(ILcom/tencent/mm/pluginsdk/model/app/x;)V

    .line 190
    new-instance v1, Lcom/tencent/mm/plugin/webview/b/d;

    iget-object v2, p0, Lcom/tencent/mm/ui/tools/jsapi/f;->hoU:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    invoke-direct {v1, v2, v3, v0}, Lcom/tencent/mm/plugin/webview/b/d;-><init>(Ljava/lang/String;ILjava/util/LinkedList;)V

    .line 191
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/f;->hoV:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/tencent/mm/plugin/webview/b/d;->pS(Ljava/lang/String;)V

    .line 192
    invoke-static {}, Lcom/tencent/mm/pluginsdk/model/app/ba;->PE()Lcom/tencent/mm/pluginsdk/model/app/c;

    invoke-static {v4, v1}, Lcom/tencent/mm/pluginsdk/model/app/c;->a(ILcom/tencent/mm/pluginsdk/model/app/z;)V

    .line 194
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/f;->hoW:Lcom/tencent/mm/ui/tools/jsapi/h;

    sget-object v1, Lcom/tencent/mm/ui/tools/jsapi/i;->hoZ:Lcom/tencent/mm/ui/tools/jsapi/i;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V

    .line 195
    return-void
.end method

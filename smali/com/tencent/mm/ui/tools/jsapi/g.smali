.class final Lcom/tencent/mm/ui/tools/jsapi/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic hoW:Lcom/tencent/mm/ui/tools/jsapi/h;

.field final synthetic hoX:Lcom/tencent/mm/ui/tools/jsapi/e;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/jsapi/e;Lcom/tencent/mm/ui/tools/jsapi/h;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 196
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/jsapi/g;->hoX:Lcom/tencent/mm/ui/tools/jsapi/e;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/jsapi/g;->hoW:Lcom/tencent/mm/ui/tools/jsapi/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 199
    const-string v0, "MicroMsg.JSOAuthHelper"

    const-string v1, "showDlgForJSOAuth click cancel"

    invoke-static {v0, v1}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    iget-object v0, p0, Lcom/tencent/mm/ui/tools/jsapi/g;->hoW:Lcom/tencent/mm/ui/tools/jsapi/h;

    sget-object v1, Lcom/tencent/mm/ui/tools/jsapi/i;->hpb:Lcom/tencent/mm/ui/tools/jsapi/i;

    invoke-interface {v0, v1}, Lcom/tencent/mm/ui/tools/jsapi/h;->a(Lcom/tencent/mm/ui/tools/jsapi/i;)V

    .line 201
    return-void
.end method

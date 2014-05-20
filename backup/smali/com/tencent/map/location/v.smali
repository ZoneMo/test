.class final Lcom/tencent/map/location/v;
.super Ljava/lang/Thread;


# instance fields
.field private synthetic UF:Lcom/tencent/map/location/s;

.field private UH:Lcom/tencent/map/location/z;

.field private Uh:Lcom/tencent/map/location/m;

.field private Ux:Lcom/tencent/map/location/q;


# direct methods
.method constructor <init>(Lcom/tencent/map/location/s;Lcom/tencent/map/location/q;Lcom/tencent/map/location/m;Lcom/tencent/map/location/z;)V
    .locals 1

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object v0, p0, Lcom/tencent/map/location/v;->Ux:Lcom/tencent/map/location/q;

    iput-object v0, p0, Lcom/tencent/map/location/v;->Uh:Lcom/tencent/map/location/m;

    iput-object v0, p0, Lcom/tencent/map/location/v;->UH:Lcom/tencent/map/location/z;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/tencent/map/location/q;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/location/q;

    iput-object v0, p0, Lcom/tencent/map/location/v;->Ux:Lcom/tencent/map/location/q;

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Lcom/tencent/map/location/m;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/location/m;

    iput-object v0, p0, Lcom/tencent/map/location/v;->Uh:Lcom/tencent/map/location/m;

    :cond_1
    if-eqz p4, :cond_2

    invoke-virtual {p4}, Lcom/tencent/map/location/z;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/map/location/z;

    iput-object v0, p0, Lcom/tencent/map/location/v;->UH:Lcom/tencent/map/location/z;

    :cond_2
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    invoke-static {}, Lcom/tencent/map/location/s;->lZ()Z

    move-result v0

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->k(Lcom/tencent/map/location/s;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/map/location/s;->c(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/map/location/s;->d(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/map/location/s;->e(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "[0-9a-zA-Z+-]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    iget-object v2, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->l(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-static {v2, v0}, Lcom/tencent/map/location/s;->c(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->l(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->l(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v0, ""

    :goto_1
    invoke-static {v2, v0}, Lcom/tencent/map/location/s;->c(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;

    :goto_2
    iget-object v2, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->m(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    const-string v0, ""

    :goto_3
    invoke-static {v2, v0}, Lcom/tencent/map/location/s;->d(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->m(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->m(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    const-string v0, ""

    :goto_4
    invoke-static {v2, v0}, Lcom/tencent/map/location/s;->d(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;

    :goto_5
    iget-object v2, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->n(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    const-string v0, ""

    :goto_6
    invoke-static {v2, v0}, Lcom/tencent/map/location/s;->e(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->n(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v1, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->n(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, ""

    :goto_7
    invoke-static {v1, v0}, Lcom/tencent/map/location/s;->e(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_8
    invoke-static {}, Lcom/tencent/map/location/s;->mg()Z

    iget-object v1, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->l(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const-string v0, ""

    :goto_9
    invoke-static {v1, v0}, Lcom/tencent/map/location/s;->c(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->m(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_b

    const-string v0, ""

    :goto_a
    invoke-static {v1, v0}, Lcom/tencent/map/location/s;->d(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->n(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_c

    const-string v0, ""

    :goto_b
    invoke-static {v1, v0}, Lcom/tencent/map/location/s;->e(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->l(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_d

    const-string v0, "0123456789ABCDEF"

    :goto_c
    invoke-static {v0}, Lcom/tencent/map/location/ad;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/map/location/s;->f(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->o(Lcom/tencent/map/location/s;)I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/tencent/map/location/v;->UH:Lcom/tencent/map/location/z;

    invoke-static {v0}, Lcom/tencent/map/location/ac;->b(Lcom/tencent/map/location/z;)Ljava/lang/String;

    move-result-object v0

    :goto_d
    iget-object v1, p0, Lcom/tencent/map/location/v;->Uh:Lcom/tencent/map/location/m;

    iget-object v2, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v2}, Lcom/tencent/map/location/s;->p(Lcom/tencent/map/location/s;)Lcom/tencent/map/location/j;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/map/location/j;->lY()Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/map/location/ac;->a(Lcom/tencent/map/location/m;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v1, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v1}, Lcom/tencent/map/location/s;->l(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v3}, Lcom/tencent/map/location/s;->m(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v4}, Lcom/tencent/map/location/s;->n(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v5}, Lcom/tencent/map/location/s;->q(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v6}, Lcom/tencent/map/location/s;->r(Lcom/tencent/map/location/s;)Z

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Lcom/tencent/map/location/ac;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    iget-object v1, p0, Lcom/tencent/map/location/v;->Ux:Lcom/tencent/map/location/q;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/tencent/map/location/v;->Ux:Lcom/tencent/map/location/q;

    invoke-virtual {v1}, Lcom/tencent/map/location/q;->lZ()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/tencent/map/location/v;->Ux:Lcom/tencent/map/location/q;

    invoke-static {v1}, Lcom/tencent/map/location/ac;->b(Lcom/tencent/map/location/q;)Ljava/lang/String;

    move-result-object v1

    :goto_e
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "{\"version\":\"1.9.0\",\"address\":"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v5}, Lcom/tencent/map/location/s;->s(Lcom/tencent/map/location/s;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\"source\":203,\"access_token\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v5}, Lcom/tencent/map/location/s;->t(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\",\"app_name\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v5}, Lcom/tencent/map/location/s;->u(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\",\"bearing\":1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\"attribute\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",\"location\":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",\"cells\":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\"wifis\":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v1}, Lcom/tencent/map/location/s;->d(Lcom/tencent/map/location/s;)Lcom/tencent/map/location/x;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v1, v2, v0}, Lcom/tencent/map/location/x;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v1}, Lcom/tencent/map/location/s;->d(Lcom/tencent/map/location/s;)Lcom/tencent/map/location/x;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/map/location/x;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->l(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->l(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_3
    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/tencent/map/location/s;->c(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_2

    :catch_0
    move-exception v0

    goto/16 :goto_8

    :cond_4
    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->m(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_3

    :cond_5
    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->m(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_4

    :cond_6
    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    const-string v2, ""

    invoke-static {v0, v2}, Lcom/tencent/map/location/s;->d(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_5

    :cond_7
    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->n(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_6

    :cond_8
    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->n(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_7

    :cond_9
    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    const-string v1, ""

    invoke-static {v0, v1}, Lcom/tencent/map/location/s;->e(Lcom/tencent/map/location/s;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_8

    :cond_a
    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->l(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_9

    :cond_b
    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->m(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_a

    :cond_c
    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->n(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_b

    :cond_d
    iget-object v0, p0, Lcom/tencent/map/location/v;->UF:Lcom/tencent/map/location/s;

    invoke-static {v0}, Lcom/tencent/map/location/s;->l(Lcom/tencent/map/location/s;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_c

    :cond_e
    const-string v0, "[]"

    goto/16 :goto_d

    :cond_f
    const-string v1, "{}"

    goto/16 :goto_e
.end method

.class final Lcom/tencent/mm/model/bg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/mm/storage/r;


# instance fields
.field final synthetic ciN:Lcom/tencent/mm/model/be;


# direct methods
.method constructor <init>(Lcom/tencent/mm/model/be;)V
    .locals 0
    .parameter

    .prologue
    .line 1021
    iput-object p1, p0, Lcom/tencent/mm/model/bg;->ciN:Lcom/tencent/mm/model/be;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/tencent/mm/storage/n;Lcom/tencent/mm/storage/o;)V
    .locals 11
    .parameter
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x2

    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1025
    if-nez p1, :cond_1

    .line 1186
    :cond_0
    :goto_0
    return-void

    .line 1029
    :cond_1
    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1033
    :cond_2
    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tC(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1035
    const-string v0, "floatbottle"

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v0

    .line 1036
    if-nez v0, :cond_3

    .line 1037
    new-instance v0, Lcom/tencent/mm/storage/n;

    const-string v1, "floatbottle"

    invoke-direct {v0, v1}, Lcom/tencent/mm/storage/n;-><init>(Ljava/lang/String;)V

    move v1, v2

    .line 1041
    :cond_3
    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/n;->ca(I)V

    .line 1043
    invoke-static {}, Lcom/tencent/mm/model/x;->tU()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/n;->bY(I)V

    .line 1044
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v2

    const/16 v3, 0x8

    const-string v4, " and not ( type = 10000 and isSend != 2 ) "

    invoke-virtual {v2, v3, v4}, Lcom/tencent/mm/storage/ap;->t(ILjava/lang/String;)Lcom/tencent/mm/storage/ak;

    move-result-object v2

    .line 1046
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-lez v3, :cond_5

    .line 1047
    invoke-virtual {v0, v2}, Lcom/tencent/mm/storage/n;->t(Lcom/tencent/mm/storage/ak;)V

    .line 1048
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/storage/i;->tE(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/n;->setContent(Ljava/lang/String;)V

    .line 1049
    invoke-virtual {v2}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/n;->bP(Ljava/lang/String;)V

    .line 1051
    invoke-virtual {p2}, Lcom/tencent/mm/storage/o;->nR()Lcom/tencent/mm/storage/s;

    move-result-object v3

    .line 1052
    if-eqz v3, :cond_4

    .line 1053
    new-instance v4, Lcom/tencent/mm/pointers/PString;

    invoke-direct {v4}, Lcom/tencent/mm/pointers/PString;-><init>()V

    .line 1054
    new-instance v5, Lcom/tencent/mm/pointers/PString;

    invoke-direct {v5}, Lcom/tencent/mm/pointers/PString;-><init>()V

    .line 1055
    new-instance v6, Lcom/tencent/mm/pointers/PInt;

    invoke-direct {v6}, Lcom/tencent/mm/pointers/PInt;-><init>()V

    .line 1056
    const-string v7, "floatbottle"

    invoke-virtual {v2, v7}, Lcom/tencent/mm/storage/ak;->uK(Ljava/lang/String;)V

    .line 1057
    iget-object v7, v0, Lcom/tencent/mm/storage/n;->field_content:Ljava/lang/String;

    invoke-virtual {v2, v7}, Lcom/tencent/mm/storage/ak;->setContent(Ljava/lang/String;)V

    .line 1058
    invoke-interface {v3, v2, v4, v5, v6}, Lcom/tencent/mm/storage/s;->a(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;)V

    .line 1061
    iget-object v2, v4, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    .line 1062
    iget-object v2, v5, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    iput-object v2, v0, Lcom/tencent/mm/storage/n;->field_digestUser:Ljava/lang/String;

    .line 1063
    iget v2, v6, Lcom/tencent/mm/pointers/PInt;->value:I

    iput v2, v0, Lcom/tencent/mm/storage/n;->field_hasTrunc:I

    .line 1070
    :cond_4
    :goto_1
    if-eqz v1, :cond_6

    .line 1071
    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/o;->c(Lcom/tencent/mm/storage/n;)J

    goto/16 :goto_0

    .line 1067
    :cond_5
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->aAH()V

    goto :goto_1

    .line 1073
    :cond_6
    invoke-virtual {v0}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/n;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1078
    :cond_7
    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 1079
    :cond_8
    const/4 v3, 0x0

    .line 1080
    const/4 v0, 0x0

    .line 1083
    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/storage/i;->ty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1084
    const-string v0, "tmessage"

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v0

    .line 1085
    if-nez v0, :cond_17

    .line 1086
    new-instance v0, Lcom/tencent/mm/storage/n;

    const-string v1, "tmessage"

    invoke-direct {v0, v1}, Lcom/tencent/mm/storage/n;-><init>(Ljava/lang/String;)V

    move v1, v2

    move-object v3, v0

    .line 1089
    :goto_2
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v8

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v4, 0x3006

    invoke-virtual {v0, v4}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_b

    move-wide v4, v6

    :goto_3
    invoke-virtual {v8, v10, v4, v5}, Lcom/tencent/mm/storage/ap;->h(IJ)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/tencent/mm/storage/n;->bY(I)V

    .line 1090
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    const-string v4, " and not ( type = 10000 and isSend != 2 ) "

    invoke-virtual {v0, v10, v4}, Lcom/tencent/mm/storage/ap;->t(ILjava/lang/String;)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    .line 1093
    :cond_9
    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/tencent/mm/storage/i;->tA(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1094
    const-string v0, "qmessage"

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v0

    .line 1095
    if-nez v0, :cond_15

    .line 1096
    new-instance v0, Lcom/tencent/mm/storage/n;

    const-string v1, "qmessage"

    invoke-direct {v0, v1}, Lcom/tencent/mm/storage/n;-><init>(Ljava/lang/String;)V

    move-object v1, v0

    .line 1099
    :goto_4
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v5

    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sr()Lcom/tencent/mm/storage/e;

    move-result-object v0

    const/16 v3, 0x3007

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/e;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    if-nez v0, :cond_c

    move-wide v3, v6

    :goto_5
    invoke-virtual {v5, v9, v3, v4}, Lcom/tencent/mm/storage/ap;->h(IJ)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/n;->bY(I)V

    .line 1100
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v0

    const-string v3, " and not ( type = 10000 and isSend != 2 ) "

    invoke-virtual {v0, v9, v3}, Lcom/tencent/mm/storage/ap;->t(ILjava/lang/String;)Lcom/tencent/mm/storage/ak;

    move-result-object v0

    .line 1103
    :goto_6
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v3

    cmp-long v3, v3, v6

    if-lez v3, :cond_d

    .line 1104
    invoke-virtual {v1, v0}, Lcom/tencent/mm/storage/n;->t(Lcom/tencent/mm/storage/ak;)V

    .line 1105
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/n;->setContent(Ljava/lang/String;)V

    .line 1106
    invoke-virtual {v0}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/mm/storage/n;->bP(Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p2}, Lcom/tencent/mm/storage/o;->nR()Lcom/tencent/mm/storage/s;

    move-result-object v3

    .line 1109
    if-eqz v3, :cond_a

    .line 1110
    new-instance v4, Lcom/tencent/mm/pointers/PString;

    invoke-direct {v4}, Lcom/tencent/mm/pointers/PString;-><init>()V

    .line 1111
    new-instance v5, Lcom/tencent/mm/pointers/PString;

    invoke-direct {v5}, Lcom/tencent/mm/pointers/PString;-><init>()V

    .line 1112
    new-instance v6, Lcom/tencent/mm/pointers/PInt;

    invoke-direct {v6}, Lcom/tencent/mm/pointers/PInt;-><init>()V

    .line 1113
    const-string v7, "qmessage"

    invoke-virtual {v0, v7}, Lcom/tencent/mm/storage/ak;->uK(Ljava/lang/String;)V

    .line 1114
    iget-object v7, v1, Lcom/tencent/mm/storage/n;->field_content:Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/tencent/mm/storage/ak;->setContent(Ljava/lang/String;)V

    .line 1115
    invoke-interface {v3, v0, v4, v5, v6}, Lcom/tencent/mm/storage/s;->a(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;)V

    .line 1118
    iget-object v0, v4, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    .line 1119
    iget-object v0, v5, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    iput-object v0, v1, Lcom/tencent/mm/storage/n;->field_digestUser:Ljava/lang/String;

    .line 1120
    iget v0, v6, Lcom/tencent/mm/pointers/PInt;->value:I

    iput v0, v1, Lcom/tencent/mm/storage/n;->field_hasTrunc:I

    .line 1126
    :cond_a
    :goto_7
    if-eqz v2, :cond_e

    .line 1127
    invoke-virtual {p2, v1}, Lcom/tencent/mm/storage/o;->c(Lcom/tencent/mm/storage/n;)J

    goto/16 :goto_0

    .line 1089
    :cond_b
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    goto/16 :goto_3

    .line 1099
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto/16 :goto_5

    .line 1123
    :cond_d
    invoke-virtual {v1}, Lcom/tencent/mm/storage/n;->aAH()V

    goto :goto_7

    .line 1129
    :cond_e
    invoke-virtual {v1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v1, v0}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/n;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1135
    :cond_f
    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/mm/model/w;->cw(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    const-string v0, "officialaccounts"

    iget-object v3, p1, Lcom/tencent/mm/storage/n;->field_parentRef:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 1140
    const-string v0, "officialaccounts"

    invoke-virtual {p2, v0}, Lcom/tencent/mm/storage/o;->tZ(Ljava/lang/String;)Lcom/tencent/mm/storage/n;

    move-result-object v0

    .line 1141
    if-nez v0, :cond_14

    .line 1142
    new-instance v0, Lcom/tencent/mm/storage/n;

    const-string v3, "officialaccounts"

    invoke-direct {v0, v3}, Lcom/tencent/mm/storage/n;-><init>(Ljava/lang/String;)V

    move-object v3, v0

    move v0, v2

    .line 1145
    :goto_8
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/storage/o;->aAN()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/n;->bY(I)V

    .line 1146
    const-string v4, "MicroMsg.MMCore"

    const-string v5, "of cvs count is %d"

    new-array v8, v2, [Ljava/lang/Object;

    invoke-virtual {v3}, Lcom/tencent/mm/storage/n;->rN()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v4, v5, v8}, Lcom/tencent/mm/sdk/platformtools/aa;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1147
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v4

    invoke-virtual {v4}, Lcom/tencent/mm/storage/o;->aAO()Ljava/lang/String;

    move-result-object v4

    .line 1148
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v5

    invoke-virtual {v5}, Lcom/tencent/mm/model/b;->sw()Lcom/tencent/mm/storage/ap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/tencent/mm/storage/ap;->uW(Ljava/lang/String;)Lcom/tencent/mm/storage/ak;

    move-result-object v4

    .line 1150
    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->Bo()J

    move-result-wide v8

    cmp-long v5, v8, v6

    if-lez v5, :cond_12

    .line 1151
    invoke-virtual {v3, v4}, Lcom/tencent/mm/storage/n;->t(Lcom/tencent/mm/storage/ak;)V

    .line 1152
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->aCl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->getContent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/mm/storage/n;->setContent(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v4}, Lcom/tencent/mm/storage/ak;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/tencent/mm/storage/n;->bP(Ljava/lang/String;)V

    .line 1155
    invoke-virtual {p2}, Lcom/tencent/mm/storage/o;->nR()Lcom/tencent/mm/storage/s;

    move-result-object v5

    .line 1156
    if-eqz v5, :cond_10

    .line 1157
    new-instance v6, Lcom/tencent/mm/pointers/PString;

    invoke-direct {v6}, Lcom/tencent/mm/pointers/PString;-><init>()V

    .line 1158
    new-instance v7, Lcom/tencent/mm/pointers/PString;

    invoke-direct {v7}, Lcom/tencent/mm/pointers/PString;-><init>()V

    .line 1159
    new-instance v8, Lcom/tencent/mm/pointers/PInt;

    invoke-direct {v8}, Lcom/tencent/mm/pointers/PInt;-><init>()V

    .line 1160
    const-string v9, "officialaccounts"

    invoke-virtual {v4, v9}, Lcom/tencent/mm/storage/ak;->uK(Ljava/lang/String;)V

    .line 1161
    iget-object v9, v3, Lcom/tencent/mm/storage/n;->field_content:Ljava/lang/String;

    invoke-virtual {v4, v9}, Lcom/tencent/mm/storage/ak;->setContent(Ljava/lang/String;)V

    .line 1162
    invoke-interface {v5, v4, v6, v7, v8}, Lcom/tencent/mm/storage/s;->a(Lcom/tencent/mm/storage/ak;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PString;Lcom/tencent/mm/pointers/PInt;)V

    .line 1165
    iget-object v4, v6, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/mm/storage/n;->field_digest:Ljava/lang/String;

    .line 1166
    iget-object v4, v7, Lcom/tencent/mm/pointers/PString;->value:Ljava/lang/String;

    iput-object v4, v3, Lcom/tencent/mm/storage/n;->field_digestUser:Ljava/lang/String;

    .line 1167
    iget v4, v8, Lcom/tencent/mm/pointers/PInt;->value:I

    iput v4, v3, Lcom/tencent/mm/storage/n;->field_hasTrunc:I

    .line 1173
    :cond_10
    :goto_9
    if-eqz v0, :cond_13

    .line 1174
    invoke-virtual {p2, v3}, Lcom/tencent/mm/storage/o;->c(Lcom/tencent/mm/storage/n;)J

    .line 1180
    :cond_11
    :goto_a
    const-string v0, "@blacklist"

    iget-object v3, p1, Lcom/tencent/mm/storage/n;->field_parentRef:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1181
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->su()Lcom/tencent/mm/storage/k;

    move-result-object v0

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/tencent/mm/storage/k;->tO(Ljava/lang/String;)Lcom/tencent/mm/storage/i;

    move-result-object v0

    .line 1182
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/tencent/mm/sdk/platformtools/cj;->hX(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/tencent/mm/storage/i;->rd()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1183
    invoke-static {}, Lcom/tencent/mm/model/be;->uz()Lcom/tencent/mm/model/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/mm/model/b;->sx()Lcom/tencent/mm/storage/o;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, ""

    invoke-virtual {v0, v2, v1}, Lcom/tencent/mm/storage/o;->a([Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1170
    :cond_12
    invoke-virtual {v3}, Lcom/tencent/mm/storage/n;->aAH()V

    goto :goto_9

    .line 1176
    :cond_13
    invoke-virtual {v3}, Lcom/tencent/mm/storage/n;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v3, v0}, Lcom/tencent/mm/storage/o;->a(Lcom/tencent/mm/storage/n;Ljava/lang/String;)I

    goto :goto_a

    :cond_14
    move-object v3, v0

    move v0, v1

    goto/16 :goto_8

    :cond_15
    move v2, v1

    move-object v1, v0

    goto/16 :goto_4

    :cond_16
    move v2, v1

    move-object v1, v3

    goto/16 :goto_6

    :cond_17
    move-object v3, v0

    goto/16 :goto_2
.end method
